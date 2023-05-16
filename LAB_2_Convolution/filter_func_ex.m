t = linspace(-pi,pi,100);
rng default  %initialize random number generator
x = sin(t) + 0.25*rand(size(t));
%{
y(n)=1/windowSize(x(n)+x(n−1)+...+x(n−(windowSize−1))).
%}
windowSize = 5; 
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b,a,x);

plot(t,x)
hold on
plot(t,y)
legend('Input Data','Filtered Data')