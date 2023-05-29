fp = 1500;
fs = 2000;
Fs = 8000; %Sampling rate
omega_p = 2*pi*1500; %2*pi*f
omega_s = 2*pi*2000; %2*pi*f
%finding digital frequencies
wp = omega_p/Fs; % Ω = WTd
ws = omega_s/Fs;
Rp = 3; As = 40;
% Analog filter design:
[b, a] = afd_chb1(wp, ws, Rp, As);
[C,B,A] = sdir2cas(b,a)
[db,mag,pha,w] = freqs_m(b,a,1*pi);
plot(w/pi,db);axis([0 0.5 -40 10]);grid;
xlabel('freq in pi units');ylabel(' db magnitude');title('db magnitude response');
