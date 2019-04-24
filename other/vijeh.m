clc
clear all

n = input('مرتبه ی ماتریس را واردکنید : ');  
for i = 1:n 
for j = 1:n 
str = ['درایه سطر ' num2str(i) ', ستون ' num2str(j) ': ']
a(i,j) = input(str); 
end 
end 
a
%******************%
syms x;
b=det(a-x.*eye(n))
for s = 1:n 
d(1,s) = 1; 
end 
for f = 1:n 
for l = 1:n+1-f 
d(1,f) = d(1,f).*l;
end
end
d(1,n+1)=1;
for k = n+1:-1:2
c(1,n-k+2) = diff(b,k-1,x);
v(1,n-k+2)=subs(c(1,n-k+2),x,2);
w(1,n-k+2)=v(1,n-k+2)./d(1,n-k+2);
b = b-(x.^(k-1)).*w(1,n-k+2);
end
w(1,n+1)= subs(b,x,0);
m=double(w);
q=roots(m)