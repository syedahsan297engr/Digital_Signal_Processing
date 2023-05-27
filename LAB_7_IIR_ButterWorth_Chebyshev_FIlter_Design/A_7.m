wp = 0.2*pi; ws = 0.3*pi; Rp = 7; As = 16;
Ripple = 10^(-Rp/20);
Attn = 10^(-As/20);
 % Analog filter design:
[b,a] = afd_butt(wp,ws,Rp,As);
%*** Butterworth Filter Order = >> 3;
% Calculation of second-order sections:
[C,B,A] = sdir2cas(b,a)

% Calculation of Frequency Response:
[db,mag,pha,w] = freqs_m(b,a,0.5*pi);
% Calculation of Impulse response:
[ha,x,t] = impulse(b,a);
subplot(2,2,1);plot(w/pi,mag);axis([0 0.5 0 1]);grid;
xlabel('freq in pi units');ylabel('magnitude');title('magnitude response');
subplot(2,2,2);plot(w/pi,db);axis([0 0.5 -60 20]);grid;
xlabel('freq in pi units');ylabel(' db magnitude');title('db magnitude response');
subplot(2,2,3);plot(w/pi,pha);axis([0 0.5 -4 4]);grid;
xlabel('freq in pi units');ylabel('Radian');title('phase response');
subplot(2,2,4);plot(t,ha);axis([0 35 -0.1 0.3]);grid;
xlabel('Time in sec');ylabel('Ha');title('Impulse response');