 % Digital Filter Specifications:
wp = 0.2*pi; % digital Passband freq in rad
 ws = 0.3*pi; % digital Stopband freq in rad
 Rp = 1; % Passband ripple in dB
As = 15; % Stopband attenuation in dB
 % Analog Prototype Specifications: Inverse mapping for frequencies
 T = 1; Fs = 1/T; % Set T=1
OmegaP = (2/T)*tan(wp/2); % Prewarp Prototype Passband freq
 OmegaS = (2/T)*tan(ws/2); % Prewarp Prototype Stopband freq
 % Analog Chebyshev-1 Prototype Filter Calculation:
 [cs,ds] = afd_chb1(OmegaP,OmegaS,Rp,As);
%*** Chebyshev-1 Filter Order = 4
 % Bilinear transformation:
 [b,a] = bilinear(cs,ds,Fs); [C,B,A] = dir2cas(b,a)