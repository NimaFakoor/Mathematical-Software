% levery yer!
A = input('A = ');
B = A;
n = size(A,1);
p = zeros(n,1);
S = zeros(1,n);
S(1) = trace(A);
p(1) = -S(1);
for i =2:length(p)
    B = A*B;
    S(i) = trace(B);
    p(i) = -(1/i)*S(i);
    p(i) = p(i) + -(1/i)*(S(i-1:-1:1)*p(1:i-1));
end
disp([1;p]);