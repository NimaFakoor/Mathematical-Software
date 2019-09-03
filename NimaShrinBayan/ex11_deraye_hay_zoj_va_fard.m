clear;
clc;


%tamrin 11
%andis haye zoj va fard


%girim araye voroodi A bashad darim :

%x=input('Enter Vector=');
A=[1 2 3 4 5 6 7 8 9];


n=length(A);

for i=1:1:n
    
    
    if mod(i,2)==0
        j=1;
         %zoj
   L(i)=A(i);
    j=j+1;
    else
        
        k=1;
    %fard
    R(i)=A(i);
  k=k+1;
    end
    
end


L 
R



