clc;
clear;

colors = {'b','r','g','y','k'};

hold on;


r = 5;
xc = 0;
yc = 0;

theta = linspace(0,2*pi);
%theta = 0:0.1:2*pi;
x_t = r*cos(theta) + xc;
y_t = r*sin(theta) + yc;

X=x_t;
Y=y_t;

plot(X,Y,'Color',colors{2}) %rasm 

fill(X,Y,[1 1 1])

%patch(X,Y);

patch(X,Y,'red')

for p=-10:2:8
    for q=-10:2:8

x=1+p;
y=1+q;

y_max=2+q;
x_max=2+p;

y_min=0+q;
x_min=0+p;

plot([x x],[y_min y_max],'Color',colors{3})        % mehvar tagharon amoodi moraba
plot([x_min x_max],[y y],'Color',colors{3})        % mehvar tagharon ofoghiii moraba
plot([x_min x_min],[y_min y_max],'Color',colors{1}) %yal samt chap moraba
plot([x_max x_max],[y_min y_max],'Color',colors{1}) %yal samt rast moraba
plot([x_min x_max],[y_max y_max],'Color',colors{1}) %yal balaii moraba
plot([x_min x_max],[y_min y_min],'Color',colors{1}) %yal paaiinii moraba
plot([x_min x_max],[y_min y_max],'Color',colors{1}) %ghoter min be max
plot([x_min x_max],[y_max y_min],'Color',colors{1}) %ghoter min be max

% 
% fill(x,y,[1 1 1])
% 
% %patch(X,Y);
% 
% patch(x,y,'red')


    end
end

%patch(-x_t',-y_t','-b')


% figure
% fill(X,Y,[1 1 1])
% 

%
% X_C=imcomplement(-X);
% Y_C=imcomplement(-Y);
%colormap();
%pcolor(X)


%fill(X,Y)

