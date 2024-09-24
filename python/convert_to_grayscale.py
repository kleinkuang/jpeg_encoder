import cv2
import numpy as np

imag = cv2.imread('./d.jpg')

imag = cv2.resize(imag, (128, 128), interpolation= cv2.INTER_LINEAR)
imag = cv2.cvtColor(imag, cv2.COLOR_BGR2GRAY)

cv2.imshow('Original Image', imag)
cv2.waitKey()

cv2.imwrite("grayscale_128x128.bmp", imag)
