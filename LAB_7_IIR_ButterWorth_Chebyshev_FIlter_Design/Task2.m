wp = 0.2*pi; ws = 0.3*pi; Rp = 1; As = 15;
OmegaP = (2/T)*tan(wp/2); % Prewarp Prototype Passband freq  solving omega in ohm
OmegaS = (2/T)*tan(ws/2); % Prewarp Prototype Stopband freq
[b,a] = afd_butt(OmegaP,OmegaS,Rp,As);
[C,B,A] = sdir2cas(b,a)
% Calculation of Frequency Response:
[db,mag,pha,w] = freqs_m(b,a,0.5*pi);
% Calculation of Impulse response:
[ha,x,t] = impulse(b,a);
T=1; Fs = 1/T;  
[b,a] = bilinear(b,a,Fs);
subplot(2,2,1);plot(w/pi,mag);axis([0 0.5 0 1]);grid;
xlabel('freq in pi units');ylabel('magnitude');title('magnitude response');
subplot(2,2,2);plot(w/pi,db);axis([0 0.5 -40 10]);grid;
xlabel('freq in pi units');ylabel(' db magnitude');title('db magnitude response');
subplot(2,2,3);plot(w/pi,pha);axis([0 0.5 -4 4]);grid;
xlabel('freq in pi units');ylabel('Radian');title('phase response');
subplot(2,2,4);plot(t,ha);axis([0 35 -0.1 0.3]);grid;
xlabel('Time in sec');ylabel('Ha');title('Impulse response');

