clear all
close all
clc
% Discrete Fourier Transform


A=imread('1.jpg');
B=imread('2.jpg');

% A=imread('5.jpg');
% B=imread('4.jpg');


A=rgb2gray(A);
B=rgb2gray(B);
A=double(A);
B=double(B);
A=A/255;
B=B/255;
fftA=fft2(A);
fftB=fft2(B);
magfftA=abs(fftA);
phasefftA=angle(fftA);
magfftB=abs(fftB);
phasefftB=angle(fftB);
 imafterfftAB=abs(ifft2(magfftB.*exp(i*phasefftA)));
figure: imshow(imafterfftAB)