n = 0:100;
x = cos(0.48*pi*n) + cos(0.58*pi*n);
Xk = fft(x, 100);
figure(); n = 0:99; plot(n,Xk);
k = 0:99; f = k/100; figure(); stem(f, Xk);