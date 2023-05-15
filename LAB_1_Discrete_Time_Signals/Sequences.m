%Real-valued exponential sequence
n = [0:10];
x = (0.9).^n;
subplot(3,1,1)
stem(n,x)
axis([-1 11 0 1.5])
%Complex-valued exponential sequence
n = [0:10];
x = exp((2+3j)*n);
subplot(3,1,2)
stem(n,x)
axis([-1 11 (-3*10^7) (10*10^7)])
%sinusoidal sequence
n = [0:10];
x = 3*cos(0.1*pi*n+pi/3) + 2*sin(0.5*pi*n);
subplot(3,1,3)
stem(n,x)
axis([-1 11 -5 5])
%periodic sequence
xtilde = x' * ones(1,P); % P columns of x; x is a row vector
xtilde = xtilde(:); % long column vector
xtilde = xtilde'; % long row vecto



