c = [1,1];
d = [1,5,6];
T= 0.1;
[b,a] = imp_invr(c, d, T)

c = [1,1];
d = [1,5,6];
T = 1; Fs = 1/T;
[b,a] = bilinear(c,d,Fs)
