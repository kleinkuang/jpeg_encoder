# JPEG Encoder
Hardware Implementation of JPEG Encoder for Real-time Compression

The software implementation aims to realize the JPEG compression algorithm from the lowest level
- it can be used to generate test vectors for verifying the hardware implementation on FPGA.
- it only requires `matplotlib` or `opencv-python` module to read the `.bmp` file and `numpy` for matrix operations.

## Python vs FPGA Implementation

### \# Result 
Row Image | Encoded by Python IMP. |  Encoded by FPGA IMP.
:-------------------------:|:-------------------------:|:-------------------------:
<img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/python/demo/batman_3090_raw.bmp" width="256" height="256">  | <img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/python/demo/batman_3090_python.jpeg" width="256" height="256"> | <img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/python/demo/batman_3090_fpga.jpeg" width="256" height="256">

## Python Implementation

Print detailed coding process for each minimum coded unit.

#### DCT Matrix
    [[ 0.354  0.354  0.354  0.354  0.354  0.354  0.354  0.354]
     [ 0.49   0.416  0.278  0.098 -0.098 -0.278 -0.416 -0.49 ]
     [ 0.462  0.191 -0.191 -0.462 -0.462 -0.191  0.191  0.462]
     [ 0.416 -0.098 -0.49  -0.278  0.278  0.49   0.098 -0.416]
     [ 0.354 -0.354 -0.354  0.354  0.354 -0.354 -0.354  0.354]
     [ 0.278 -0.49   0.098  0.416 -0.416 -0.098  0.49  -0.278]
     [ 0.191 -0.462  0.462 -0.191 -0.191  0.462 -0.462  0.191]
     [ 0.098 -0.278  0.416 -0.49   0.49  -0.416  0.278 -0.098]]

#### MCU: (0, 0)
     [[ 48 247 255 238 238 254 255 255]
      [ 96 239 238 238 206 238 238 238]
      [ 96 238 238 255 187 251 239 255]
      [ 96 255 238 255 206 238 190 187]
      [ 96 255 255 255 255 255 255 255]
      [ 96 238 238 238 222 255 255 255]
      [ 96 207 253 255 191 255 255 239]
      [ 64 236 254 175 136 136 216 253]]

#### Level shift:
     [[-80 119 127 110 110 126 127 127]
      [-32 111 110 110  78 110 110 110]
      [-32 110 110 127  59 123 111 127]
      [-32 127 110 127  78 110  62  59]
      [-32 127 127 127 127 127 127 127]
      [-32 110 110 110  94 127 127 127]
      [-32  79 125 127  63 127 127 111]
      [-64 108 126  47   8   8  88 125]]

#### FDCT:
     [[ 706.5   -197.001 -153.304 -225.402 -186.75   -82.355  -57.186  -77.932]
      [  41.361  -10.314  -42.856   28.413   -1.487  -19.936   -6.573  -21.584]
      [ -51.716  -25.931   40.813  -51.423  -19.048    2.665   -1.177   28.599]
      [  75.527  -49.779  -39.653   32.536   -1.707  -13.256   -6.264   13.657]
      [ -29.      25.074   -8.076  -28.362   -8.75   -37.158  -18.844   22.717]
      [   1.836    3.594  -36.801   17.595   -6.772   17.278   15.212  -25.5  ]
      [  -7.262  -17.817   25.573  -21.021   -4.828  -15.732   -6.563    2.629]
      [  44.865  -37.233   -2.265   -6.343    1.419   10.662    4.243    2.5  ]]

#### Quantized:
     [[ 44.156 -17.909 -15.33  -14.088  -7.781  -2.059  -1.121  -1.278]
      [  3.447  -0.86   -3.061   1.495  -0.057  -0.344  -0.11   -0.392]
      [ -3.694  -1.995   2.551  -2.143  -0.476   0.047  -0.017   0.511]
      [  5.395  -2.928  -1.802   1.122  -0.033  -0.152  -0.078   0.22 ]
      [ -1.611   1.14   -0.218  -0.506  -0.129  -0.341  -0.183   0.295]
      [  0.077   0.103  -0.669   0.275  -0.084   0.166   0.135  -0.277]
      [ -0.148  -0.278   0.328  -0.242  -0.047  -0.13   -0.055   0.026]
      [  0.623  -0.405  -0.024  -0.065   0.013   0.107   0.041   0.025]]

#### Round:
     [[ 44. -18. -15. -14.  -8.  -2.  -1.  -1.]
      [  3.  -1.  -3.   1.  -0.  -0.  -0.  -0.]
      [ -4.  -2.   3.  -2.  -0.   0.  -0.   1.]
      [  5.  -3.  -2.   1.  -0.  -0.  -0.   0.]
      [ -2.   1.  -0.  -1.  -0.  -0.  -0.   0.]
      [  0.   0.  -1.   0.  -0.   0.   0.  -0.]
      [ -0.  -0.   0.  -0.  -0.  -0.  -0.   0.]
      [  1.  -0.  -0.  -0.   0.   0.   0.   0.]]

#### Dequantized (Lossy):
     Check with the JPEGsnoop DCT Matrix
     [[ 704. -198. -150. -224. -192.  -80.  -51.  -61.]
      [  36.  -12.  -42.   19.   -0.   -0.   -0.   -0.]
      [ -56.  -26.   48.  -48.   -0.    0.   -0.   56.]
      [  70.  -51.  -44.   29.   -0.   -0.   -0.    0.]
      [ -36.   22.   -0.  -56.   -0.   -0.   -0.    0.]
      [   0.    0.  -55.    0.   -0.    0.    0.   -0.]
      [  -0.   -0.    0.   -0.   -0.   -0.   -0.    0.]
      [  72.   -0.   -0.   -0.    0.    0.    0.    0.]]

#### Zigzag:
     [[ 44 -18   3  -4  -1 -15 -14  -3]
      [ -2   5  -2  -3   3   1  -8  -2]
      [  0  -2  -2   1   0   0   0   0]
      [  1   0   0  -1  -1   0   0   0]
      [ -1  -1   0   1   0   0   0   0]
      [  0   0   0   1   0   0   0   0]
      [  0   0   0   0   0   0   0   0]
      [  0   0   0   0   0   0   0   0]]

#### RLE:
     - DC: 44
     - AC: [(0, -18), (0, 3), (0, -4), (0, -1), (0, -15), (0, -14), (0, -3), (0, -2), (0, 5), (0, -2), (0, -3), (0, 3), (0, 1), (0, -8), (0, -2), (1, -2), (0, -2), (0, 1), (4, 1), (2, -1), (0, -1), (3, -1), (0, -1), (1, 1), (7, 1), (0, 0)]

#### Huffman encoding:
     - DC: ((4, 14), (6, 44))
     - AC: [((5, 26), (5, 13)), ((2, 1), (2, 3)), ((3, 4), (3, 3)), ((2, 0), (1, 0)), ((4, 11), (4, 0)), ((4, 11), (4, 1)), ((2, 1), (2, 0)), ((2, 1), (2, 1)), ((3, 4), (3, 5)), ((2, 1), (2, 1)), ((2, 1), (2, 0)), ((2, 1), (2, 3)), ((2, 0), (1, 1)), ((4, 11), (4, 7)), ((2, 1), (2, 1)), ((5, 27), (2, 1)), ((2, 1), (2, 1)), ((2, 0), (1, 1)), ((6, 59), (1, 1)), ((5, 28), (1, 0)), ((2, 0), (1, 0)), ((6, 58), (1, 0)), ((2, 0), (1, 0)), ((4, 12), (1, 1)), ((8, 250), (1, 1)), ((4, 10), (0, 0))]
     - DC: ['1110-101100']
     - AC: ['11010-01101', '01-11', '100-011', '00-0', '1011-0000', '1011-0001', '01-00', '01-01', '100-101', '01-01', '01-00', '01-11', '00-1', '1011-0111', '01-01', '11011-01', '01-01', '00-1', '111011-1', '11100-0', '00-0', '111010-0', '00-0', '1100-1', '11111010-1', '1010-']

#### Byte stream:
     EB 34 D7 8C 58 58 A2 CA A8 E6 DD 76 A9 EF C0 E8 33 F5 
     
## FPGA Implementation
The designed FPGA IP is fully synthesizable and has been implemented onto the Digilent Atry-Z7 development board (Xilinx Zynq xc7z020clg400-1) for demostration.

### Post-Implementation Utilization
<img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/fpga/fpga_ut.png">

### Post-Implementation P&R
<img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/fpga/fpga_imp.png" width="800">

## Test Platform
Use external UART cable to challenge the designed JPEG encoder at baudrate of 115200.

`!!! Reset is required before executing the python script jpeg_z7_streamer !!!`

<img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/fpga/fpga_tb.jpg" width="800">

### Result

| Performance   | CR       | PSNR      |
| ------------- |:--------:|:---------:|
| Min           | 3.656    | 24.245    |
| Max           | 5.821    | 27.652    |
| Average       | 4.543    | 25.733    |

<img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/fpga/fpga_res_bat_1-5000.png">
