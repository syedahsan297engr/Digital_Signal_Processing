n = 0:99;
x = cos(0.48*pi*n) + cos(0.58*pi*n);
%Determine and plot 100 points dft
N = 100;
X = dfs(x,N);
magX = abs(X);
figure(); plot(n,magX);
k = 0:99; f = k/100; figure(); stem(f, abs(X));