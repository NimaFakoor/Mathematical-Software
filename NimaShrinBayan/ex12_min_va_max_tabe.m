clear;
clc;

%tamrin 12
%algoritm mohaseb min va max tabe


%baray hal girim tabe delkhah y dar baze [a,b] 

x=-5:0.01:5;

y=x.*sin(x);

%%%algoritm mohasebe min va max 
%%
N=length(y);
for k=1:N
for t=1:N-k
    
if y(t)>y(t+1)
    
temp=y(t);
y(t)=y(t+1);
y(t+1)=temp;

end

end
end
%%
%%min va max ma be sorat zir ast

n_max=y(N)
n_min=y(1)
