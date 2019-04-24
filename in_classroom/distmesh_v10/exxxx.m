clear;
clc;
% Example: (Uniform Mesh on Unit Circle)
    fd=@(p) sqrt(sum(p.^2,2))-1;
    [p,t]=distmesh2d(fd,@huniform,0.2,[-1,-1;1,1],[]);