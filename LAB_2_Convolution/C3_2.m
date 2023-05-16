x = [1 2 3 4 5];
nx = 0:4;
h = [6 7 8 7];
nh = 0:3;
xn = x';
hn = h';
[y,n] = conv_m(x,nx,h,nh);
yn = y';
%we gave to make 8*5 matrix which will be toeplitz matrix by the way
H1 = toeplitz(yn,xn);
disp(H1)

%performing convolution
[y2,H2] = conv_tp_matrix(hn,xn);
disp(y2); disp(H2);
sprintf("Using 2nd technique");
[y3,H3] = convtp(h,x);
disp(y3); disp(H3);