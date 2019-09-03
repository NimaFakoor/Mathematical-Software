clear;
clc;

colors = {'b','r','g','y','k'};

hold on;


%tamrin 3

%rasme nemodr tabe gussi


%x=-5:0.01:5;

t = linspace(-1,1,1000);


%%%
a=1;

y=exp(-a*t.^2);

plot(t,y,'Color',colors{1}) %rasm1


%%%
a=2;

y=exp(-a*t.^2);

plot(t,y,'Color',colors{2}) %rasm2

%%%
a=5;

y=exp(-a*t.^2);

plot(t,y,'Color',colors{3}) %rasm3


