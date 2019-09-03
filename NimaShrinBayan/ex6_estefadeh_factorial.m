clear;
clc;

%tamrin 6

tic

%girim
x=1;
%mikhahim expolantial ro mohasebe konim darim

n=100;
%
n_exp=0;

for i=0:1:n
    
    n_exp=((x)^i)/factorial(i)+n_exp;

end

n_exp

toc


tic

%real

exp(1)

toc
