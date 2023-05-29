function [b,a] = u_chblap(N,Rp,OmegaC);
% Unnormalized Chebyshev-l Analog Lowpass Filter Prototype
% ________________________________________________________
% [b,a] = u_chb1ap(N,Rp,Omegac) ;
% b = numerator polynomial coefficients
% a = denominator polynomial coefficients
% N = Order of the Chebyshev Filter
% Rp = Passband Ripple in dB; Rp > 0
% Omegac = Cutoff frequency in radiandsec
%
[z,p,k] = cheb1ap(N,Rp);
a = real (poly (p));
aNn = a(N+1);
p = p*OmegaC;
a = real(poly(p));
aNu=a(N+1);
k = k*aNu/aNn;
b0 = k;
B = real(poly(z));
b = k*B;
end