%{
Design a fourth-order lowpass elliptic filter with normalized passband frequency 0.4 rad/sample. 
Specify a passband ripple of 0.5 dB and a stopband attenuation of 20 dB. 
Plot the first 50 samples of the impulse response.
%}
[b,a] = ellip(4,0.5,20,0.4);
impz(b,a,50)
