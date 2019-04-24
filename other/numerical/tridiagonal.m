%% tridiagonal
tridiag = input('enter a tridiagonal matrix.');
rhs = input('enter the right hand side matrix.');
mat = [tridiag,rhs];
for i = 1:size(mat,1)
    mat(i,:) = mat(i,:)/mat(i,i);
    mat = duz(mat,i,i);
end
disp(mat);