%Analog design
wp = 0.2*pi;
ws = 0.3*pi;
Rp = 1;
As = 16;
Ripple=10^(-Rp/20);
Attn=10^(-As/20);
% Analog filter design:
[b,a] = afd_chb2(wp, ws, Rp, As);
 % Calculation of second-order sections: 
[C,B,A] = sdir2cas(b,a)

% Calculation of Frequency Response:
[db,mag,pha,w] = freqs_m(b,a,pi);
% Calculation of Impulse response:
[ha,x,t] = impulse(b,a);
subplot(2,2,1);plot(w/pi,mag);grid;
xlabel('freq in pi units');ylabel('magnitude');title('magnitude response');
subplot(2,2,2);plot(w/pi,db);axis([0 0.5 -30 10]);grid;
xlabel('freq in pi units');ylabel(' db magnitude');title('db magnitude response');
subplot(2,2,3);plot(w/pi,pha);axis([0 0.5 -1 1]);grid;
xlabel('freq in pi units');ylabel('Radian');title('phase response');
subplot(2,2,4);plot(t,ha);axis([0 30 -0.4 0.3]);grid;
xlabel('Time in sec');ylabel('Ha');title('Impulse response');

%using these CBA u can write T.F and then get digital form
