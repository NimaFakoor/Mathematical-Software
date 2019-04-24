A = input('A');
n = length(A);
I = eye(n);
for i =1:n-2
    x = [zeros(i,1);A(i+1:end,i)];
    v = -x - sign(x(i+1)) * norm(x) * I(:,i+1);
    P =  I - 2*(v*v')./(v'*v);
    A = P*A*P';
end
P
A