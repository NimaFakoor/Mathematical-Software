clear;
clc;


n=100000;


%format long



% x(1)=1;
% 
% for i=2:n
%     x(i)=1.001*(x(i-1));
% end
% 
% x(n)
% 





x(1)=0.5;

for i=2:n
   % x(i)=exp(-x(i-1));
     x(i)=1/-(x(i-1));
end

x(n)
% y=linspace(-3,3,100000);
%plot(x,y) 

