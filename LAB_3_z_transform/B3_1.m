n = 0:7;
x=[0.8.^n].*stepseq(0,7,2);
disp(x)

%calc z-tranform
b = [0 0 0.64];
a = [1 -0.8];
[x,n]=imseq(0,7,0);
x=filter(b,a,x);
disp(x)

zplane(b,a)
