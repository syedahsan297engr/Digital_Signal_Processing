n = -20:100;
a = [1 -1 0.9]; %y coeff
b = [1]; %x coeff
h = impz(b,a,n);
subplot(3,1,1);
stem(n,h);
grid on; title("Impulse Response");

[x,n] = stepseq(-20,100,0);
subplot(3,1,2);
stem(n,x);
grid on ; title("Step Sequence");

R = filter(b,a,x); %changing x will give u respective response for system
subplot(3,1,3);
stem(n,R);
grid on ; title("Step Response");

check = sum(abs(h));
disp(check);
if(isinf(check))
    sprintf("Seeing Impulse Response System is not Stable")
else
    sprintf("Seeing Impulse Response System is Stable")
end
    
%{
changing x will give u respective response for system
[x,n] = imseq(-20,100,0);
R = filter(b,a,x);
stem(n,R);

A system is stable if summation of impulse response from -inf to +inf is
less than inf
%}
