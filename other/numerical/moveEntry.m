function [ mat ] = moveEntry( mat,i ,j,p,q)
    mat = swapRow(mat,i,p);
    mat = swapCol(mat,j,q);
end

