clear all
close all
clc


t = 0:1/50:10-1/50;                     
x = sin(2*pi*t) + sin(2*pi*t);
% % % % plot(t,x)
% % % % title('A')

%

y = fft(x);     
f = (0:length(y)-1)*50/length(y);
plot(f,abs(y))
title('M')