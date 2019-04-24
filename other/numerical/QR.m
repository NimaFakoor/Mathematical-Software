% QR Gram–Schmidt process
innerprod = @(x,y) x'*conj(y);
proj = @(x,y) y * (innerprod(x,y)'./diag(innerprod(y,y)));
A = input('A');
n = size(A,2);
Q = A(:,1)/norm(A(:,1));
for i = 2:n
    u = A(:,i)-proj(A(:,i),Q(:,1:i-1));
    Q(:,i) = u/norm(u);
end
disp(Q);
disp(Q'*A);