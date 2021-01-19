# File:		jpeg_baseline.py
# Author: 	Lei Kuang
# Date:		06th July 2020
# @ Imperial College London

# Software Implementation of JPEG from the lowest level
# - https://www.w3.org/Graphics/JPEG/itu-t81.pdf

from jpeg_table import *
from jpeg_func  import *

import cv2
import os

import matplotlib.pyplot as plt

Q_OPT = [[ 23,31,39,24,38,39,51,34],
         [ 31,24,22,25,45,125,30,87],
         [ 27,31,28,40,29,33,105,94],
         [ 29,33,54,72,30,78,60,66],
         [ 24,28,42,20,36,69,86,116],
         [ 26,34,36,111,73,126,125,73],
         [ 28,33,33,86,55,67,127,125],
         [ 36,30,39,71,88,77,110,80]];

def jpeg_q2_header(out_path):
    # Read standard header
    h_file   = open("header_128x128.hex", "rb")
    std_header = h_file.read()
    h_file.close()
    # Generate optimaized quantization table
    Q_OPT_F = np.array(Q_OPT).flatten()
    Q_OPT_Z = zigzag(Q_OPT_F)

    q_hex = b''
    for num in Q_OPT_Z:
        q_hex = q_hex + int(num).to_bytes(1, byteorder='big')

    new_header = std_header[:20+5]
    new_header = new_header + q_hex
    new_header = new_header + std_header[20+5+64:]

    h_file   = open(out_path, "wb")
    h_file.write(new_header)
    h_file.close()

def jpeg_baseline(img, out_path, opt=False, show=False):
    # --------------------------------
    # Input Image
    # --------------------------------
    img = np.array(img).astype(np.int16)
    
    if(show):
        plt.imshow(img, cmap='gray',  vmin=0,  vmax=255)
        plt.show()

    # --------------------------------
    # Minimum Coded Unit
    # --------------------------------
    # Check dimension
    row_len = img.shape[0]
    col_len = img.shape[1]

    if(row_len%8!=0 or col_len%8!=0):
        print('Image Dimension Invalid')
        return None

    if(show):
        print('\n# Input Image')
        print('> ROW_LEN: %d' % row_len)
        print('> COL_LEN: %d' % col_len)
        
    # --------------------------------
    # Generate DCT matrix
    # --------------------------------
    dct_mat = dct_matrix_gen(8)
    #dct_mat = np.array(FDCT2)

    if(show):
        print('\n# DCT Matrix')
        print(dct_mat)

    # --------------------------------
    # MCU processing
    # --------------------------------
    dc_pre    = 0
    byte_list = []
    byte_left = [0, 0]
    for r_i in range(0, row_len, 8):
        for c_i in range(0, col_len, 8):
            # --------------------------------
            # - Minimum Coded Unit
            # --------------------------------
            mcu = img[r_i:r_i+8, c_i:c_i+8].astype(int)
            
            if(show):
                print('\n# MCU: (%d, %d)' % (r_i>>3, c_i>>3))
                print(mcu)
            
            # --------------------------------
            # - Level shift
            # - REF: ITU-T81, Annex F, P91
            # --------------------------------
            mcu_ls = mcu - 128
            
            if(show):
                print('\n# Level shift:')
                print(mcu_ls)
            
            # --------------------------------
            # - Forward discrete cosine transform
            # --------------------------------
            img_dct = np.dot(dct_mat, mcu_ls)
            img_dct = np.dot(img_dct, dct_mat.T)

            if(show):
                print('\n# FDCT:')
                print(img_dct)
            
            # --------------------------------
            # - Quantization
            # --------------------------------
            if(opt):
                img_q50 = img_dct / Q_OPT
            else:
                img_q50 = img_dct / Q50
            
            if(show):
                print('\n# Quantized:')
                print(img_q50)
            
            # --------------------------------
            # - Round
            # --------------------------------
            img_rod = np.round(img_q50)
            
            if(show):
                print('\n# Round:')
                print(img_rod)
            
            # --------------------------------
            # - Dequantization
            # --------------------------------
            if(show):
                print('\n# Dequantized (Lossy):')
                print('Check with the JPEGsnoop DCT Matrix')
                print(img_rod * Q50)
            
            # --------------------------------
            # - Zigzag sequencing
            # --------------------------------
            img_zig = zigzag(img_rod)
            
            if(show):
                print('\n# Zigzag:')
                print(img_zig.reshape(8, 8))
            
            # --------------------------------
            # - Run-length encoding
            # --------------------------------
            (dc, ac) = mcu_rle(img_zig)
            
            if(show):
                print('\n# RLE:')
                print('- DC: %d' % dc)
                print('- AC:', ac)
            
            # --------------------------------
            # - Huffman encoding
            # --------------------------------
            dc_code = encode_dc(dc, dc_pre)
            dc_pre  = dc
            ac_code = []
            for ac_tuple in ac:
                ac_code.append(encode_ac(ac_tuple))

            if(show):
                print('\n# Huffman encoding:')
                print('- DC:', dc_code)
                print('- AC:', ac_code)
                dc_str = dc_bin_str(dc_code)
                print('- DC:', [dc_str])
                ac_str = ac_bin_str(ac_code)
                print('- AC:', ac_str)
            
            # --------------------------------
            # - Convert to bytes
            # --------------------------------
            if(show):
                print('\n# Byte stream:')
            (byte_list, byte_left) = code2bytes([dc_code] + ac_code, byte_list, byte_left)
            #print(byte_list)
            #print(byte_left)
    
    # --------------------------------
    # Encoded data
    # --------------------------------
    if(show):
        print('\n# Encoded data:')
    # - Pad ones if left data not fill one byte
    if(byte_left[0]!=0):
        uint8 = np.uint8((byte_left[1] << (8 - byte_left[0])) | int('1'*(8 - byte_left[0]), 2))
        byte_list.append(uint8.tobytes())
    # - Print HEX
    pad_none = 8
    if(show):
        print('   '*pad_none, end='')
    cnt = pad_none
    for data in byte_list:
        uint8 = int.from_bytes(data, "little")
        if(show):
            print(hex(uint8)[2:].upper().zfill(2) + ' ', end='')
        cnt = cnt + 1

        if(cnt==16 and show):
            print()
            cnt=0
    
    # --------------------------------
    # Append header
    # --------------------------------
    # - ONLY support 128x128 Image
    if(opt):
        h_file = open("header_128x128_opt.hex", "rb")
    else:
        h_file = open("header_128x128.hex", "rb")
    
    jpeg_hex = h_file.read()
    h_file.close()

    # --------------------------------
    # Append encoded data
    # --------------------------------
    for b in byte_list:
        jpeg_hex = jpeg_hex + b
    
    # --------------------------------
    # Append end marker
    # --------------------------------
    jpeg_hex = jpeg_hex + b'\xFF\xD9'
    
    # --------------------------------
    # Write File
    # --------------------------------
    jpeg = open(out_path, 'wb')
    jpeg.write(jpeg_hex)
    jpeg.close()
            
if __name__ == "__main__":
    # Init
    np.set_printoptions(precision=3, suppress=True)
    
    # Start
    # - Generate optimized jpeg header
    jpeg_q2_header("header_128x128_opt.hex")
    
    # JPEG
    print()
    print("%-14s%10s,%10s,%10s,%10s,%10s,%20s,%10s,%10s,%10s,%10s" % ("File,", "GLD CR:1", "STD CR:1", "CR %", "OPT CR:1", "CR %", "GLD PSNR", "STD PSNR", "PSNR %", "OPT PSNR", "PSNR %"))
    
    gld_cr_list   = []
    std_cr_list   = []
    opt_cr_list   = []
    
    gld_psnr_list = []
    std_psnr_list = []
    opt_psnr_list = []
    
    for n in range(1, 4970, 10):
        # Read image
        img_name = "batman_new_%d" % n
        img = plt.imread('./blackpearl_new/bmp/%s.bmp' % img_name, 0)
        
        # - Golden, compressed by CV2
        cv2.imwrite        ("./blackpearl_new/jpeg/gld/%s.jpeg"   % (img_name + '_gld'), img, [cv2.IMWRITE_JPEG_QUALITY, 50])
        
        # - Standard, compressed by software implementation
        jpeg_baseline(img, "./blackpearl_new/jpeg/std/%s.jpeg"  % (img_name + '_std'), opt=False)
        
        # - Optimized, compressed by software implementation with customized quantization table
        jpeg_baseline(img, "./blackpearl_new/jpeg/opt/%s.jpeg" % (img_name + '_opt'), opt=True)
        
        # Evaluation
        # - Compression Ratio
        bmp_size = os.path.getsize("./blackpearl_new/bmp/%s.bmp" % img_name)
        gld_size = os.path.getsize("./blackpearl_new/jpeg/gld/%s.jpeg" % (img_name + '_gld'))
        std_size = os.path.getsize("./blackpearl_new/jpeg/std/%s.jpeg" % (img_name + '_std'))
        opt_size = os.path.getsize("./blackpearl_new/jpeg/opt/%s.jpeg" % (img_name + '_opt'))
        
        gld_cr = bmp_size/gld_size
        gld_cr_list.append(gld_cr)
        std_cr = bmp_size/std_size
        std_cr_list.append(std_cr)
        opt_cr = bmp_size/opt_size
        opt_cr_list.append(opt_cr)

        std_cr_p = (std_cr-gld_cr) / gld_cr * 100
        opt_cr_p = (opt_cr-gld_cr) / gld_cr * 100
        
        # PSNR
        bmp = cv2.imread("./blackpearl_new/bmp/%s.bmp" % img_name)
        gld = cv2.imread("./blackpearl_new/jpeg/gld/%s.jpeg" % (img_name + '_gld'))
        std = cv2.imread("./blackpearl_new/jpeg/std/%s.jpeg" % (img_name + '_std'))
        opt = cv2.imread("./blackpearl_new/jpeg/opt/%s.jpeg" % (img_name + '_opt'))
        
        gld_psnr = cv2.PSNR(bmp, gld)
        gld_psnr_list.append(gld_psnr)
        std_psnr = cv2.PSNR(bmp, std)
        std_psnr_list.append(std_psnr)
        opt_psnr = cv2.PSNR(bmp, opt)
        opt_psnr_list.append(opt_psnr)

        std_psnr_p = (std_psnr-gld_psnr) / gld_psnr * 100
        opt_psnr_p = (opt_psnr-gld_psnr) / gld_psnr * 100
        
        print("%-14s%10.2f,%10.2f,%10.2f,%10.2f,%10.2f,%20.2f,%10.2f,%10.2f,%10.2f,%10.2f" % (img_name+',', gld_cr, std_cr, std_cr_p, opt_cr, opt_cr_p, gld_psnr, std_psnr, std_psnr_p, opt_psnr, opt_psnr_p))
        
    print("\nAverage Performance")

    print("- Compression Ratio")
    gld_cr_av = np.mean(gld_cr_list)
    std_cr_av = np.mean(std_cr_list)
    opt_cr_av = np.mean(opt_cr_list)
    print("  Golden    JPEG: %10.2f : 1" % gld_cr_av)
    print("  Standard  JPEG: %10.2f : 1" % std_cr_av)
    print("  Optimized JPEG: %10.2f : 1" % opt_cr_av)
    print("  Performance:    %%%10.2f" % ((opt_cr_av - gld_cr_av) / gld_cr_av * 100))
    
    print("- PSNR")
    gld_psnr_av = np.mean(gld_psnr_list)
    std_psnr_av = np.mean(std_psnr_list)
    opt_psnr_av = np.mean(opt_psnr_list)
    print("  Golden    JPEG: %10.2f    " % gld_psnr_av)
    print("  Standard  JPEG: %10.2f    " % std_psnr_av)
    print("  Optimized JPEG: %10.2f    " % opt_psnr_av)
    print("  Performance:    %%%10.2f" % ((opt_psnr_av - gld_psnr_av) / gld_psnr_av * 100))
