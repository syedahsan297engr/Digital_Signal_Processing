%for cut-off freq = stop band freq
function [b,a] = afd_chb2(wp, ws, Rp, As);
% Analog Lovpass Filter Design: Chebyshev-2
%___________________________________________
% [b,a] = afd_chb2(wp, ws, Rp, As);
% b = Numerator coefficients of Ha(s)
% a = Denominator coefficients of Ha(s)
% wp = Passband edge frequency in rad/sec; wp > 0
% ws = Stopband edge frequency in rad/sec; ws > wp > 0
% Rp = Passband ripple in +dB; (Rp > 0)
% As = Stopband attenuation in +dB; (As > 0)
%
if wp <= 0
error('Passband edge must be larger than 0')
end
if ws <= wp
error('Stopband edge muat be larger than Passband edge')
end
if (Rp <= 0) | (As < 0)
error('PB ripple and/or SB attenuation ust be larger than 0')
end
ep = sqrt(10^(Rp/10)-1);
A = 10^(As/20);
OmegaC = wp;
OmegaR = ws/wp;
g = sqrt(A*A-1)/ep;
N = ceil(log10(g+sqrt(g*g-1))/log10(OmegaR+sqrt(OmegaR*OmegaR-1))) ;
fprintf('\n*** Chebyshev-2 Filter Order = %2.0f \n',N)
[b,a]=u_chb2ap(N,Rp,OmegaC) ;
end