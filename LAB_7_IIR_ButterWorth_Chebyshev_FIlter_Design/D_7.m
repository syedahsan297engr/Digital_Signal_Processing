% Digital Filter Specifications: 426
 wp = 0.2*pi; %digital Passband freq in rad
 ws = 0.3*pi; %digital Stopband freq in rad
 Rp = 1; %Passband ripple in dB
 As = 15; %Stopband attenuation in dB
 % Analog Prototype Specifications:
 T = 1; %Set T=1
OmegaP = wp / T; % Prototype Passband freq
OmegaS = ws / T;
 %*** Butterworth Filter Order 6
[cs,ds] = afd_butt(OmegaP,OmegaS,Rp,As);
[b,a] = imp_invr(cs,ds,T); 
%[C,B,A] = dir2par(b,a);



