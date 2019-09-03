clear;
clc;

colors = {'b','r','g','y','k'};

hold on;


%tamrin 5

%rasme mojak kolah mekziki


%x=-5:0.01:5;

x = linspace(-10,10,10000);


%%%

psi=(1-x.^2).*exp(-(x.^2)/2);


plot(x,psi,'Color',colors{1}) %rasm


