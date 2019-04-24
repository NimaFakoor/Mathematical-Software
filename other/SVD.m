clear;
clc;
A=[1 2 3;4 5 8];

U = A*A';
V = A'*A;

%vec val
[U,F] = eig(U);
F = sqrt(F);
[V,D] = eig(V);
E = flip(eye(size(U)));
U = E*U*E;
F = E*F*E;
S = zeros(2,3);
 S(1,1) =sqrt(F(2,2));
 S(2,2) = sqrt(F(1,1));

 %S(:,1) = F(:,1);
%S(:,2) = F(:,2);

V=V';

V = flip(V);

disp(U);
disp(S);
disp(V);

flip(U*S*V)

