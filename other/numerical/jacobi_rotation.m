% rotation matrix jacobi
mat = input('enter a matrix');
m=size(mat);
eps = 10^-15;
u=inf;
while max(u(:)) > eps
    u = abs(mat - diag(diag(mat)));
    [p ,q] = proper(u-diag(diag(u))); 
    if mat(p,p) - mat(q,q) ~= 0
        theta = atan((-2*mat(p,q))/(mat(p,p)-mat(q,q)))/2;
    else
        theta = pi/4;
    end
    E=eye(m);
    E(p,p) = cos(theta);
    E(p,q) = sin(theta);
    E(q,p) = -sin(theta);
    E(q,q) = cos(theta);
    mat = E'*mat*E;
end
disp(mat);