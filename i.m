clc;
clear;
figure;
colors = {'b','r','g','y','k'};

hold on;

%% sakht moraba mesh

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


    end
end


pause(3)

        
%%%%%%%%%%%%%% 
% dayere %
%%%%%%%%%%%%%%
r = 2;
xc = 4;
yc = 3;

theta = linspace(0,2*pi);
x_t = r*cos(theta) + xc;
y_t = r*sin(theta) + yc;

%filc::FillColor  := RGB::code???:
X=x_t;
Y=y_t;
fill(X,Y,[1 1 1])
plot(x_t,y_t,'Color',colors{2}) %rasm 

%axis equal
%axis square

%%%%%%%%%%%%%%%%%%
 

    title(';)')

    
    %viscircles(centers,radii,'Color',colors{2});
