% Digital Filter Specifications:
 wp = 0.2*pi; % digital Passband freq in rad
ws = 0.3*pi; % digital Stopband freq in rad
 Rp = 1; % Passband ripple in dB
 As = 15; % Stopband attenuation in dB
% Analog Prototype Specifications: Inverse mapping for frequencies
 T = 1; % Set T=1
OmegaP = wp / T; % Prototype Passband freq
 OmegaS = ws / T; % Prototype Stopband freq
 % Analog Chebyshev-1 Prototype Filter Calculation:
 [cs,ds] = afd_chb1(OmegaP,OmegaS,Rp,As);
 % Impulse Invariance transformation:
[b,a] = imp_invr(cs,ds,T); [C,B,A] = dir2par(b,a)