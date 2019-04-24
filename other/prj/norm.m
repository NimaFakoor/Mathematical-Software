clear all
close all
clc


% % % % % % % % % % % % % % ||A||_M = \max_{1 \leq i\leq n} \sum_{j=1}^n |A_{ij}|


%  
% 2-norm  X :  norm(X) ||  norm(X,2)
% 
%  1-norm X :norm(X,1)
% 
%  infinity norm  X : norm(X,Inf)
% 
%  Frobenius norm X : norm(X,'fro')
% 

X = [1 2 3;4 5 6;7 8 9];

n1=norm(X)
n2=norm(X)
n3=norm(X,1)
n4=norm(X,Inf)
n5=norm(X,'fro')




% 
% ||A||M:=supx?V||x||?1||Ax||?
% ||A||M=max1?i?n?j=1n|Aij|
%     
% % % %  conclusion:
% A¯=max1?i?n?nj=1|Aij|. 
% For x=(x1,…,xn) , ?x???1 and 1?i?n
% ?????j=1nAijxj??????j=1n|Aijxj|??x??(?j=1n|Aij|)??j=1n|Aij|?A¯.
% ?A?M?A¯.
% i0?{1,…,n} , ?nj=1|Ai0j|=A¯ and x0=(sign(Ai01),…,sign(Ai0n)).
% ?x0??=1 and ?Ax0?=A¯ 