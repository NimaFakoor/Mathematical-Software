function [ output_args ] = n_inv( A )
%inv cal


n=length(A);

%efraz kardan
if mod(n,2)==0
  s=n/2;
  r=n/2;
else
    s=floor(n/2)+1;%yeki bishtar deraye
    r=floor(n/2);
end
 %efraz kardan
 
 %tarif efraz
 A_11=zeros(r);
 A_12=zeros(r,s);
 A_21=zeros(s,r);
 A_22=zeros(s);
 
 %meghdar dehi
 A_11=A(1:r,1:r)
 A_12=A(1:r,r+1:n)
 A_21=A(r+1:n,1:r)
 A_22=A(r+1:n,r+1:n)
 
 
 %moha sebe varoon  ******** tavajoh konam ke mitoonam inv (A_!!) ra joda
 %mohasbe konam :) baray pardazesh kamtar
 
 D_22=inv(A_22-A_21*inv(A_11)*A_12)
 
 D_11=inv(A_11)+inv(A_11)*A_12*D_22*A_22*inv(A_11)
 D_12=-inv(A_11)*A_12*D_22
 D_21=-D_22*A_21*inv(A_11)
 
 
A_inv=[D_11 D_12 ;D_12 D_22]
 
end


