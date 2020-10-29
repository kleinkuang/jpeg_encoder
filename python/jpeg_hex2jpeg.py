# File:     jpeg_table.py
# Author: 	Lei Kuang
# Date:     10th September 2020
# @ Imperial College London

# Read JPEG Header
file = open("header_128x128.hex", "rb")
head = file.read()
file.close()

# Open Hex (Hex string printed from systemverilog)
file = open("hex_example.txt", "r")
txt  = file.read()
file.close()

# Concatenation
hex_list = txt.split('\n')

bin = b''

for txt in hex_list:
    num = int(txt,16)
    
    if(num & 0xFFFFFF == 0):
        num = num >> 24
        if(num!=0):
            #print(hex(num))
            bin = bin + num.to_bytes(1, byteorder='big')
    else:
        #print(num.to_bytes(4, byteorder='big'))
        bin = bin + num.to_bytes(4, byteorder='big')
        
print(bin)

print('\n')

# Append Ox00 after 0xFF
bin_app = b''

for b in bin:
    bin_app = bin_app + b.to_bytes(1, byteorder='big')
    if(b==255):
        bin_app = bin_app + b'\x00'

# Append Header
jpeg = head + bin_app

# Append end flag
jpeg = jpeg + b'\xFF\xD9'

print(jpeg)

# 
file = open("fpga_out.jpeg", 'wb')
file.write(jpeg)
file.close()
