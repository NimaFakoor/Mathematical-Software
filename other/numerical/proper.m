function [ p,q] = proper( in )
 [m,p] = max(in);
 [~,q] = max(m);
 p = p(q);
end

