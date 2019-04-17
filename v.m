t = 'bordar satri ra vared konid: ';
v = input(t);
L = length(v);
x = zeros(1,L);

for i=1:L
    rank = length(find(v < v(i)));
  
    for j=1:i
        if v(j) == v(i)
            rank = rank+1;
        end
    end
    rank = rank -1;
    
    x(i) = rank;
end

x