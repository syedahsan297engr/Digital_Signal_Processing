n = -10:10;
x = exp((0.1+0.3j)*n);
subplot(2,2,1);
stem(n, abs(x));
xlabel('n'); ylabel('x[n]'); title('abs(x[n])');
grid on;
subplot(2,2,2);
stem(n, phase(x));
xlabel('n'); ylabel('x[n]'); title('angle(x[n])');
grid on;
subplot(2,2,3);
stem(n, real(x));
xlabel('n'); ylabel('x[n]'); title('real(x[n])');
grid on;
subplot(2,2,4);
stem(n, imag(x));
xlabel('n'); ylabel('x[n]'); title('img(x[n])');
grid on;

