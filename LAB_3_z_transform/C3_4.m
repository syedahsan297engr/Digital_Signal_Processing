a=[1,-0.9];
b=[1,0];
[H,w] = freqz(b,a,100,'whole');
H_m = abs(H); 
H_p = angle(H);
subplot(2,1,1); 
plot(w/pi,H_m);

 
title('Magnitude Response');
subplot(2,1,2); 
plot(w/pi, H_p/pi); 
title('Phase Response');
