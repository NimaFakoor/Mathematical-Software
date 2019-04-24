%Convolution

clc
clear

x=[1 2 3 4 5];

h=[6 7 9 0];

%y[n]=sum{n=-infty}{+infty}{x[n]} * {h[n-k]}{=}  x[n]  * h[n]


z=conv(x,h)

stem(z)