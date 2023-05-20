n = 0:10;
x = cos(0.48*pi*n) + cos(0.58*pi*n);
N = 100;
x(11:100)=0; %Determine and plot 100 points dft as we have to do zero padding
X = dfs(x,N);
magX = abs(X);
n = 0:99;
figure(); plot(n,magX);
k = 0:99; f = k/100; figure(); stem(f, abs(X));%2nd way of plotting