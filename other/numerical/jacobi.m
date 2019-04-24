% jacobi
mat = input('enter a matrix');
rhs = input('enter right hand side matrix.');
v0 = ones(size(mat,2),1);
v1 = zeros(size(mat,2),1);
eps = 10^-1;
while(norm(v1-v0)>eps)
    v0 = v1;
    v1 = rhs-mat*v0+diag(mat).*v0;
    v1 = v1./diag(mat);
end