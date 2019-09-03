clear;
clc;

colors = {'b','r','g','y','k'};

hold on;


%tamrin 4

%rasme mojak shanoon


%x=-5:0.01:5;

x = linspace(-1,1,1000);


%%%

psi=(sin(pi*x)/(pi*x))*(2*cos(pi*x)-1);

plot(x,psi,'Color',colors{1}) %rasm


