clear;
clc;

n=10000;

%format long

%x(1)=1;
x(1)=1;

g=@(x) 2*sqrt(x-1)

for i=2:n
    x(i)=g(x(i-1));
end

x(n)

x(400) 
