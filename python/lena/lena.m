clf;
close all;
clear;

frame_2D = imread('./lena_128x128.bmp');
frame_2D = rgb2gray(frame_2D);

imwrite(frame_2D, 'lena_128x128_.bmp');