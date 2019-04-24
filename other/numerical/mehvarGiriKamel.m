%% mehvar giri kamel !
U = input('enter A');
P = eye(size(U,1));
M = P;
for l = 1:size(U,1)-1
    submat = abs(U(l:end,l:end));
    [i,j] = proper(submat);
    U = moveEntry(U,i+l-1,j+l-1,l,l);
    P = swapRow(P,i+l-1,l);
    M = swapRow(M,i+l-1,l);
    [U,M] = dz(U,l,l,M);
end
disp('U is :');
disp(U);
disp('L is :');
disp(P/M);