function [ mat,e ] = dz( mat , p ,q,e )
    if nargin==3
        e = eye(size(mat,1));
    end
    for i = p + 1:size(mat,1)
        e(i,:) = e(i,:) - mat(i,q)*(e(p,:)/mat(p,q));
        mat(i,:) = mat(i,:) - mat(i,q)*(mat(p,:)/mat(p,q));
    end
end