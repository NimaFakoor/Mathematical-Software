clc;
clear;

be=40;                                        
an=[be];                                      
in=1;                                          
while be~=1                         
   if mod(be,2)==0                          
       be=be/2;                 
   else                           
       be=3*be+1;
   end
   an(in+1) = be;                     
   in=in+1;                        
end
disp(an)                                    
disp(['repetition : ', num2str(in-1)]);  