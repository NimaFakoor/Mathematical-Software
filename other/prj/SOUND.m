

clc
clear

[d f]=wavread('S4MBD.wav');

plot(d)
% plot(f)

% sound(d,44400);

sound(d,68000);

d2=abs(d);
%plot(d2)
% sound(d,44400);
d3=sqrt(d*2);
%plot(d3)
% sound(d3,f);
