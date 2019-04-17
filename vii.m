% Toeplitz

V = [1 2 3 4 5]

if(isempty(V) || size(V,1) > 1 || ~mod(length(V),2))
    error(":(");
end

n = (length(V)+1)/2;
x = zeros(n);

for i=1:n-1
    x(i,n) = V(i);
    x(n,i) = V(2*n-i);
end
x(n,n) = V(n);

for i=n:-1:2
    for j=n:-1:2
        x(i-1,j-1) = x(i,j);
    end
end
disp(x);