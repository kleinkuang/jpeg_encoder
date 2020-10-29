# File:		jpeg_func.py
# Author: 	Lei Kuang
# Date:		08th July 2020
# @ Imperial College London

from jpeg_table import *

import numpy as np
import math

# ----------------------------------------------------------------
# Converstion Functions
# ----------------------------------------------------------------
# Convert (len, val) to binary string
def bin_str(code_tuple):
    return bin(code_tuple[1])[2:].zfill(code_tuple[0]) if code_tuple[0]!=0 else ''
    
def dc_bin_str(dc_tuple):
    size = dc_tuple[0]
    code = dc_tuple[1]
    return bin_str(size) + '-' + bin_str(code)
    
def ac_bin_str(ac_tuple_list):
    ac_str = []
    for ac_tuple in ac_tuple_list:
        size = ac_tuple[0]
        code = ac_tuple[1]
        ac_str.append(bin_str(size) + '-' + bin_str(code))
    return ac_str
    
# ----------------------------------------------------------------
# Basic Functions
# ----------------------------------------------------------------
def dct_matrix_gen(N):
    mat = []
    for row in range(0, N):
        col = []
        coe = (1/2)**0.5 if row==0 else 1
        for c in range(0, N):
            coeff = coe * (2/N)**0.5 * math.cos((2*c+1)*row*math.pi / (2*N))
            col.append(coeff)
        mat.append(col)
    return np.array(mat)

# REF: ITU-T81, Annex K, P147
def zigzag(mcu):
    mcu_seq = mcu.flatten()
    mcu_zig = np.zeros((64)).astype(np.int8)
    for n in range(0, len(mcu_seq)):
        mcu_zig[ZIGZAG_SEQ[n]] = mcu_seq [n]
    return mcu_zig
    
def check_zeros(data_list, index_start=0):
    all_zeros = True
    for num in data_list[index_start:]:
        if(num!=0):
            all_zeros = False
    return all_zeros
    
def mcu_rle(mcu):
    rle = []
    cnt = 0
    dc = mcu[0]
    for n in range(1, len(mcu)):
        num = mcu[n]
        if(num!=0):
            rle.append((cnt, num))
            cnt = 0
        else:
            cnt = cnt + 1
            if(cnt==16):
                if(check_zeros(mcu, n+1)):
                    rle.append((0x0, 0x0))
                    break
                else:
                    rle.append((0xF, 0x0))
                    cnt = 0
        # Last
        if(n==len(mcu)-1):
            if(mcu[n]==0):
                rle.append((0x0, 0x0))
    
    return (dc, rle)

# REF: ITU-T81, Annex F, P92
def encode_dc(dc_val, dc_pre, show=False):
    # Differential coding
    diff = dc_val - dc_pre
    if(diff<0):
        diff = diff - 1
    # Determine category
    if(diff!=0):
        diff_sig = 0 if diff <0 else 1
        diff_bin = diff & 0xFF
        diff_len = 8
        while((diff_bin & 0x80)>>7 != diff_sig):    # When DIFF is positive, the SSSS low order bits of DIFF are appended. 
            diff_bin = (diff_bin << 1) & 0xFF       # When DIFF is negative, the SSSS low order bits of (DIFF – 1) are appended.
            diff_len = diff_len - 1                 # Note that the most significant bit of the appended bit sequence is 0 
                                                    # for negative differences and 1 for positive differences.
    else:
        diff_bin = 0
        diff_len = 0
        
    ssss = diff_len
    # Look-up table
    size = HUFFMAN_TABLE_DC[ssss]
    code = (ssss, diff_bin >> (8-ssss))
    
    if(show):
        print('\n# Encode DC')
        print('> ZZ(0): %d' % dc_val)
        print('> PRED : %d' % dc_pre)
        print('- SSSS : %d' % ssss)
        print('- DIFF : %d' % (dc_val-dc_pre))
        print('< SIZE : %s' % bin_str(size))
        print('< CODE : %s' % bin_str(code))
    
    return (size, code)
    
# REF: ITU-T81, Annex F, P93
def encode_ac(ac_tuple, show=False):
    ac_rle = ac_tuple[0] if ac_tuple[0]!=16 else 15
    ac_val = ac_tuple[1]
    if(ac_val<0):
        ac_val = ac_val - 1
    # Determine category
    if(ac_val!=0):
        ac_sig = 0 if ac_val <0 else 1
        ac_bin = ac_val & 0xFF
        ac_len = 8
        while((ac_bin & 0x80)>>7 != ac_sig):
            ac_bin = (ac_bin << 1) & 0xFF
            ac_len = ac_len - 1
    else:
        ac_bin = 0
        ac_len = 0

    rrrr = ac_rle
    ssss = ac_len
    size = HUFFMAN_TABLE_AC[(rrrr<<4) | ssss]
    code = (ssss, ac_bin >> (8-ssss))

    if(show):
        print('\n# Encode AC')
        print('> RLE  :', ac_tuple)
        print('- RRRR : %d' % rrrr)
        print('- SSSS : %d' % ssss)
        print('< SIZE : %s' % bin_str(size))
        print('< CODE : %s' % bin_str(code))
        
    return (size, code)
    
# DC+AC Code to Bytes
# (size, code)
def code2bytes(code_list, byte_list, byte_left, end=False):
    for code_tuple in code_list:
        for (size, code) in code_tuple:
            byte_left = [byte_left[0]+size, (byte_left[1]<<size) | code]
            while(byte_left[0]>=8):
                uint8 = np.uint8((byte_left[1] >> (byte_left[0] - 8)))
                print(hex(uint8)[2:].upper().zfill(2) + ' ', end='')
                byte_left[0] = byte_left[0] - 8
                byte_list.append(uint8.tobytes())
                # - F.1.2.3 Byte stuffing
                if(uint8==255):
                    byte_list.append(b'\x00')
    print()
    return (byte_list, byte_left)

if __name__ == "__main__":
    #encode_dc(-255, 0, True)
    #encode_ac((0, 0), True)
    #print(check_zeros([1, 0, 0, 0, 0, 0], 1))
    #print(np.around(dct_matrix_gen(8), 8))
    print(mcu_rle([57,-3,-1,5,0,-4,-3,0,1,0,-3,0,2,0,-1,0,0,2,0,0,0,1,-1,-1,1,1,0,0,0,0,0,0,-1,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0]))
    
