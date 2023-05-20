n = 0:10;
x = 10 * 0.8.^n; disp(x)
N = 11;
x1=x(mod1(-n,N)+1); disp(x1)
subplot(2,1,1); stem(n,x)
subplot(2,1,2); stem(n,x1)
title("circular folding")