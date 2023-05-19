[x1,n1] = stepseq(0,40,0);
[x2,n2] = stepseq(0,40,40);
[x3,n3] = sigadd(x1,n1,-x2,n2);
n = n3;
h = sinc(0.2*n).*x3;
w = [-300:300]*pi/300;
H = h*exp(-1j*n'*w);
magH = abs(H);
phaH = angle(H)*180/pi;
subplot(2,1,1);
plot(w/pi,magH);
title('Magnitude phase')
xlabel('w/pi'); 
ylabel('|H|')
subplot(2,1,2);
plot(w/pi,phaH); 
title('Phase response');
xlabel('w/pi')
ylabel('Degree')