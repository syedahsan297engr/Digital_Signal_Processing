wp = 0.2*pi; ws = 0.3*pi; Rp = 1; As = 15;
Ripple = 10^(-Rp/20);
Attn = 10^(-As/20);
[b,a] = afd_butt(wp,ws,Rp,As);
[C,B,A] = sdir2cas(b,a)
[db,mag,pha,w] = freqs_m(b,a,0.5*pi);
[ha,x,t] = impulse(b,a);
%till now we have done analog filter work now digital filter conversion
%C = 0.1209 B = 0 0 1 A = 1.0000    1.3585    0.4945
%                         1.0000    0.9945    0.4945
%                         1.0000    0.3640    0.4945
%Now have to write transfer function
%  0.1209(1) / (s^2 + 1.3585s + 0.4945)(s^2 + 0.9945s + 0.4945)(s^2 + 0.3640s + 0.4945)  
[b,a] = imp_invr(b,a,T)

subplot(2,2,1);plot(w/pi,mag);axis([0 0.5 0 1]);grid;
xlabel('freq in pi units');ylabel('magnitude');title('magnitude response');
subplot(2,2,2);plot(w/pi,db);axis([0 0.5 -40 10]);grid;
xlabel('freq in pi units');ylabel(' db magnitude');title('db magnitude response');
subplot(2,2,3);plot(w/pi,pha);axis([0 0.5 -4 4]);grid;
xlabel('freq in pi units');ylabel('Radian');title('phase response');
subplot(2,2,4);plot(t,ha);axis([0 35 -0.1 0.3]);grid;
xlabel('Time in sec');ylabel('Ha');title('Impulse response');