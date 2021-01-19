# File:		jpeg_z7_streamer.py
# Author: 	Lei Kuang
# Date:		27th October 2020
# @ Imperial College London

import os
import numpy as np
import serial
import cv2
import struct

import matplotlib.pyplot as plt

# User Settings
# !!! Note, due to the pipeline design on FPGA, some data will be
#     buffered in the system, thus last few images will not be readout

# !!! Reset is required for each round !!!
PATH     = './blackpearl'
NAME     = 'batman_'
START    = 1
END      = 5000
INTERVAL = 100
COM_PORT = 'COM4'

if __name__ == "__main__" :
    
    # Open Serial
    serial_obj = serial.Serial(COM_PORT, baudrate = 115200, timeout=30)
    if(not serial_obj):
        print("Error: Reconnect Serial ?")
        
    # Read JPEG Header
    file        = open("header_128x128.hex", "rb")
    jpeg_header = file.read()
    file.close()
    
    # Init
    print()
    print('%8s %8s %8s' % ('No.', 'CR : 1', 'PSNR'))
    
    jpeg_wr_cnt = START
    
    # Read Images
    ip_read = b''
    all_read = b''
    
    for n in range(START, END, INTERVAL):
        # Read .bmp
        img = plt.imread(PATH + '/bmp/' + NAME + '%d.bmp' % n, 0).astype(np.uint8)

        # Stream to IP through UART
        for row in img:
            # Write bytes
            bin = row.astype(np.uint8).tobytes()
            serial_obj.write(bin)
            # Read bytes
            numBytes = serial_obj.inWaiting()
            read     = serial_obj.read(numBytes)
            ip_read = ip_read + read
            all_read = all_read + read
        
        # ----------------------------------------------------------------------------------------------------------------------
        # Check if JPEG file available
        flag = b'\x00\x00\x00\x00\x00\x00'
        if(flag in ip_read):
            # Get bin ----------------------------------------------------------------------------------------------------------
            bin_index = ip_read.find(flag) + 6
            jpeg_bin  = ip_read[:bin_index]

            # Delete from read -------------------------------------------------------------------------------------------------
            ip_read   = ip_read[bin_index:]
            # Remove leading zeros ---------------------------------------------------------------------------------------------
            while(ip_read[0]==0):
                ip_read = ip_read[1:]

            # Remove trailing zeros --------------------------------------------------------------------------------------------
            while(jpeg_bin[-1]==0):
                jpeg_bin = jpeg_bin[:-1]

            # Byte stuffing ----------------------------------------------------------------------------------------------------
            jpeg_bs = b''
            for b in jpeg_bin:
                jpeg_bs = jpeg_bs + b.to_bytes(1, byteorder='big')
                if(b==255):
                    jpeg_bs = jpeg_bs + b'\x00'
                    
            # Append header ----------------------------------------------------------------------------------------------------
            jpeg = jpeg_header + jpeg_bs

            # Append end flag
            jpeg = jpeg + b'\xFF\xD9'
            
            # Write jpeg file --------------------------------------------------------------------------------------------------
            try:
                file = open(PATH + '/fpga/' + NAME + '%d.jpeg' % jpeg_wr_cnt, 'wb')
            except:
                os.mkdir(PATH + '/fpga')
                file = open(PATH + '/fpga/' + NAME + '%d.jpeg' % jpeg_wr_cnt, 'wb')
            file.write(jpeg)
            file.close()

            # Compression ratio and psrr ---------------------------------------------------------------------------------------
            bmp_size = os.path.getsize(PATH + '/bmp/' + NAME + '%d.bmp' % jpeg_wr_cnt)
            jpg_size = os.path.getsize(PATH + '/fpga/' + NAME + '%d.jpeg' % jpeg_wr_cnt)
            #print("Image %8d:" % jpeg_wr_cnt)
            #print("- CR   : %6.4f:1" % (bmp_size / jpg_size))
            
            bmp  = cv2.imread(PATH + '/bmp/' + NAME + '%d.bmp' % jpeg_wr_cnt)
            jpg  = cv2.imread(PATH + '/fpga/' + NAME + '%d.jpeg' % jpeg_wr_cnt)
            psnr = cv2.PSNR(bmp, jpg)
            #print("- PSNR : %f" % psnr)
            print('%8d,%8.3f,%8.3f' % (jpeg_wr_cnt, bmp_size / jpg_size, psnr))
            
            if(psnr<15):
                print('Error')
                raise SystemError
                
            jpeg_wr_cnt = jpeg_wr_cnt + INTERVAL
            
#    # Display hex string
#    for n in range(0, len(all_read)-4, 4):
#        (num,  ) = struct.unpack('>I', all_read[n:n+4])
#        print(hex(num)[2:].zfill(8))
