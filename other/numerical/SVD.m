% A = U?V' (SVD)
% AA' = U??'U'
A = input('input A ');
b = input('input b');
[U ,Sigma] = eig(A*A');
Sigma = sqrt(Sigma);
% AV = U?
V = A'*U;
for i =1:size(A,1)
    if Sigma(i,i) ~= 0
        V(:,i) = V(:,i)/Sigma(i,i);
    end
end
% z = zeros(size(Sigma,1),1)*nan;
% d = U'*b;
% for i =1:size(Sigma,2)
%     z(i) = d(i)/Sigma(i,i);
% end