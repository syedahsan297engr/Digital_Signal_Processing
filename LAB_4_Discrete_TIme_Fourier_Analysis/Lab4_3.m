n=0:39;
% k=0:39;
% w=(pi/40)*k;
w=-pi:pi;
h=sinc(0.2*n);
H=(h*(exp(-j*n'*w)));
disp(H);
figure
plot(w/pi, abs(H));
grid;
xlabel('frequency in pi units'); ylabel(' |H| ');
title('Magnitude Response');
figure
plot(w/pi,angle(H)); grid; % Plot angle of X1
xlabel('frequency in pi units'); title('Angle Part H');
ylabel('Radians');