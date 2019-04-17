format short

A = zeros(100,5);
N = 1:100;
A = [N' (factorial(N))' (sqrt(2*pi.*N).*(N/exp(1)).^N)'];
Abs_Err = A(:,2)-A(:,3);
A(:,4) = Abs_Err;
Rel_Err = A(:,4)./A(:,2);
A(:,5) = Rel_Err;

output = fopen('Stirling_Apx.txt','w');
fprintf(output,'-N\t -N!\t -Stirling\t -Abs.Err\t -Rel.Err\r\n');

for i=1:100
    fprintf(output,'%-3d - %-10d - %-f10.5 - %-6.4f - %-8.6f\r\n',A(i,:));
end

fclose(output);