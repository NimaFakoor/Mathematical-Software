clc
clear all

a = input('enter the beginning point ');
b = input('enter the ending point ');
n = input('enter number of intervals ');

fprintf('\n');
fprintf('\n');

o = zeros(n,n);

x = linspace(a,b,n);
%f = @(theta) theta.*(1-theta).*exp(theta);
f=@(theta)  theta.*theta; 
t = 1:n;
o(t,1)=x(t);
o(t,2)=f(x(t));

for j= 1:n
    for i=1:n-j
        o(i,j+2)=(o(i,j+1)-o(i+1,j+1))/(o(i,1)-o(i+j,1));
    end
 end

fprintf('%5.4f\t',o(1:n,1));
fprintf('\n');

for j = 1:n
    for i = 1:j-1
        fprintf('\t');
    end
	fprintf('%5.4f\t',o(1:n-j+1,j+1));
    fprintf('\n');
end

fprintf('\n');
fprintf('\n');

%polynomial
for j=2:n
    for i=n:-1:n-j
%not good debugging
        if(i~=0 && j~=0)
        
p=@(hi) f(x(i))+o(i,j-1).*(hi-x(i)).*(x(i)-x(j));
        

%our try
        %    syms x
%p=@(hi) f(x(i))+o(i,j-1).*(x-x(i)).*(x(i)-x(j));
%p(x)=f(x(i))+o(i,j-1).*(x-x(i)).*(x(i)-x(j));
%fprintf('%f',o(i,j));
%ttt=o(i-1,j+2)
% disp()
    
% p=f(x(i))+o(i,j-1).*(x(i)-x(j)).*(x(i)-x(j))
A(i,j)=p(i);
B(i,j)=p(j);
end
        
    end
end

A
fprintf('\n');
B
