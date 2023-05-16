x = [1 ; 2 ; 3 ; 4 ; 5]; nx = 0:4;
h = [6 ; 7 ; 8 ; 3]; nh = 0:3;
[y2,H2] = conv_tp_matrix(h,x);
disp(y2); disp(H2);
disp(y2');