clc;
clear;

syms x;
%tabe
f=sin(x);

g1=matlabFunction(f);
%tabe peivaste da bazeh baste extermomi mesl max darad
g2=-abs(f);
g3=matlabFunction(g2);

min=fminbnd(g3,0,1);

d=abs(g1(min));

N=600;
H=0;

%asli
for i=1:N
    x1(i)=rand(1);
    y(i)=d*x1(i);
    x2(i)=rand(1);
    z(i)=g1(x2(i));
    if y(i)>z(i)
        H=H+1;
    end
end

I=(N-H)*d/N;
I0=integral(g2,0,1);

