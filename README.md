# jpeg_encoder
Hardware Implementation of JPEG Encoder for Real-time Compression

The software implementation aims to realize the JPEG compression algorithm from the lowest level
- it can be used to generate test vectors for verifying the hardware implementation on FPGA.
- it only requires `matplotlib` or `opencv-python` module to read the `.bmp` file and `numpy` for matrix operations.

## Python and FPGA Implementation

### \# Result 
Row Image | Encoded by Python IMP. |  Encoded by FPGA IMP.
:-------------------------:|:-------------------------:|:-------------------------:
<img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/python/demo/batman_3090_raw.bmp" width="256" height="256">  | <img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/python/demo/batman_3090_python.jpeg" width="256" height="256"> | <img src="https://github.com/kleinkuang/jpeg_encoder/blob/main/python/demo/batman_3090_fpga.jpeg" width="256" height="256">
