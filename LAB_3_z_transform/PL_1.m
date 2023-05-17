%let say we have z_transform X1 and X2 we write them as

x1 = [2 3 4];
n1 = 0:2;
x2 = [3 4 5 6];
n2 = 0:3;

x3 = conv(x1,x2);
disp(x3)

%ans will be 6 17 34 ....
% write this as 6 + 17z^-1 + 34z^-2 ......