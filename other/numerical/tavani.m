%% tavani
A = input('A = ');
u = zeros(size(A,2),1);
u(1) = 1;
deghat = 10^-4;
m0 = 1;
m1 = inf;
while(abs(m0-m1)>deghat)
    m1 = m0;
    u = A*u;
    m0 = max(u);
    u = u/m0;
end
disp(m0);