clc;
clear;

xk=40;                                        
an=[xk];                                      
in=1;                                          
while xk~=1                         
   if mod(xk,2)==0                          
       xk=xk/2;                 
   else                           
       xk=3*xk+1;
   end
   an(in+1) = xk;                     
   in=in+1;                        
end
disp(an)                                    
disp(['repetition : ', num2str(in-1)]);  