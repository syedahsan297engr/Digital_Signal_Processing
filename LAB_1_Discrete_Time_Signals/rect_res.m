%{
n = -100:100;
x = rectpuls(n);

figure;
plot(n, abs(x));
title('Magnitude Response of Rectangular Function');
xlabel('n');
ylabel('Amplitude');
grid on;
%}
w = -pi:0.01:pi;
T = pi / 2;
X = sin(w * T) ./ (w);

figure;
plot(w, abs(X));
title('Magnitude Response of DTFT of Rectangular Signal');
xlabel('Radian Frequency (w)');
ylabel('Magnitude');
grid on;