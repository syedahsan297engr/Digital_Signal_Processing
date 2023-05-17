n = 0:7;
x= [(0.5).^n+(-0.8).^n].*stepseq(0,7,0);
disp(x)
%finding z-tranform and then convert in z^-1 form and then using reidues
R=[1,1]; %zeros
p= [0.5,-0.8];  %poles
C=[];
[b,a]=residuez(R,p,C);
[x,n]= imseq(0,7,0); 
x= filter(b,a,x);
disp(x)

zplane(b,a)
