fp = 49;
fs = 51;
Fs = 1000; %Sampling rate
omega_p = 2*pi*49; %2*pi*f
omega_s = 2*pi*51; %2*pi*f
%finding digital frequencies
wp = omega_p/Fs; % Ω = WTd
ws = omega_s/Fs;
Rp = 3; As = 40;
% Analog filter design:
[b, a] = afd_chb1(wp, ws, Rp, As);
T = 1; F = 1/T;
[b, a] = bilinear(b,a,F)
[db,mag,pha,w] = freqs_m(b,a,1*pi);
plot(w/pi,db);grid;
xlabel('freq in pi units');ylabel(' db magnitude');title('db magnitude response using bilinear');


