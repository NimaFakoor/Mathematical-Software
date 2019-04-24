function [ mat ] = duz( mat , p ,q )
    for i = 1:p-1
        mat(i,:) = mat(i,:) - mat(i,q)*(mat(p,:)/mat(p,q));
    end
    for i = p + 1:size(mat,1)
        mat(i,:) = mat(i,:) - mat(i,q)*(mat(p,:)/mat(p,q));
    end
end

