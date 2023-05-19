x1 = 1:11;%random signal
n1 = 0:10;
k = 0:10;
w = (pi/10)*k;
X1 = x1 * (exp(-j*pi/10)).^(n1'*k);%DTFT of X(n)
n2 = 2:12;
X2 = x1 * (exp(-j*pi/10)).^(n2'*k);%DTFT of X(n-2)
X3 = ((exp(-j*pi/10)).^(2*k)).*X1;%%DTFT using property
magX = abs(X1) ;
angX =angle(X1);
magX1 = abs(X2) ;
angX1 =angle(X2);
magX2 = abs(X3) ;
angX2 =angle(X3);
% figure
% stem(w/pi,real(X1));
% figure
% stem(w/pi,real(X2));
% figure
% stem(w/pi,real(X3));
% figure
subplot(3,1,1);
plot(w/pi, abs(X1));
grid;
xlabel('frequency in pi units'); ylabel(' |X1| ');
title('Magnitude Response');
subplot(3,1,2);


plot(w/pi,abs(X2));
grid;
xlabel('frequency in pi units'); ylabel(' |X2| ');
title('Magnitude Response');
subplot(3,1,3);

plot(w/pi,abs(X3));
grid;
xlabel('frequency in pi units'); ylabel(' |X3| ');
title('Magnitude Response');

figure
subplot(3,1,1);
plot(w/pi,angX); grid; % Plot angle of X1
xlabel('frequency in pi units'); title('Angle Part X1');
ylabel('Radians');
subplot(3,1,2);
plot(w/pi,angX1); grid; % Plot angle of X2
xlabel('frequency in pi units'); title('Angle Part X2'); 
ylabel('Radians');
subplot(3,1,3);
plot(w/pi,angX2); grid; % Plot angle of X3
xlabel('frequency in pi units'); title('Angle Part X3'); 
ylabel('Radians');

