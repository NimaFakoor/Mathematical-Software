function [ mat ] = swapRow( mat,i,j )
    c = mat(i,:);
    mat(i,:) = mat(j,:);
    mat(j,:) = c;
end
