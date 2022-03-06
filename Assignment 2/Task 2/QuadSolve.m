function a= QuadSolve(mat,y)
y=transpose(y);
a=inv(mat)*y;
end