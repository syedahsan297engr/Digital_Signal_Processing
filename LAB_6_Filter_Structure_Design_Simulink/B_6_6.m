a1=[1 1 0.9;1 0.4 -0.4];
b1=[2 4;3 1];
a2=[1 -1 0.8;1 0.5 0.5;1 0 -0.5];
b2=[0.5 0.7;1.5 2.5;0.8 1];
[b0,a0] = par2dir(0,b1,a1);
[b,a] = par2dir(0,b2,a2);
B=[b0 0 0;b];
A=[-a0 0 0;-a];
A(1)=1;
a(1)=1;
[b3,a3] = cas2dir(1,B,A);
disp(b3);
disp(a3);
[b01,b4,a4] = dir2cas(b3,a3);
disp(b4);
disp(a4);
disp(b01);
[b6,a6]=par2dir(C,B0,A0);
 
 [b7,a7]=par2dir(C,B,A);
 b9=conv(b6,b7); % Overall direct form numerator
 
 a9=conv(a6,a7);
[Cp,Bp,Ap] = dir2par(b9,a9)