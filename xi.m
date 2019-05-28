clear all
clc
A=[-2 1 0 0;1 -2 1 0;0 1 -2 1;0 0 1 -2]




r(1)=2*1/5*(-1/5*exp(1/5)*(3+1/5)-0);
r(2)=2*1/5*(-2/5*exp(2/5)*(3+2/5));
r(3)=2*1/5*(-3/5*exp(3/5)*(3+3/5));
r(4)=2*1/5*(-4/5*exp(4/5)*(3+4/5))-0;

r=r';




Y_star=inv(A)*r


delta=[1/5 2/5 3/5 4/5];

for i=1:4
Y_real(i)=(delta(i))*exp((delta(i)))*(1-(delta(i)));
end
Y_real=Y_real'

e=abs((Y_star)-(Y_real))
max(e)



order=(log(e(3)/e(2))/log(2))