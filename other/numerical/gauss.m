% gauss
mat = input('Enter a matrix.');
rhs = input('right hand side matrix.');
n = length(rhs);
k=1;
i=1;
while i < n
    if mat(i,i) == 0
        if i + k > n
            error('MATRIX IS SUNGULAR');
        end
        mat = swapRow(mat,i+k,i);
        rhs = swapRow(rhs,i+k,i);
        k = k + 1;
        continue ;
    end
    [mat,rhs] = dz(mat,i,i,rhs);
    k=1;
    i = i + 1;
end
x = zeros(n,1);
x(n) = rhs(n)/mat(n,n);
for i = n-1:-1:1
    x(i) = (rhs(i) - mat(i,i+1:n)*x(i+1:n))/mat(i,i);
end
disp(x)
