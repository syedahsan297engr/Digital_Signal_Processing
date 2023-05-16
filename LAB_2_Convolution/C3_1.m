x = [1 2 3 4 5];
nx = 0:4;
h = [6 7 8 7];
nh = 0:3;
[y,n] = conv_m(x,nx,h,nh);
stem(n,y);
