n = [0:10]; %defining the interval
x = 3*imseq(0,10,3) - imseq(0,10,6); %implementing the signal using imseq function previously implemented
figure(); %plotting signal
stem(n,x) %for discrete representation we use stem keyword
grid on
axis([0 10 -1.7 4]); %defining range of x and y axis to be shown on plot
xlabel("n") %setting label
ylabel("x[n]")
title("Part a")

n = [0:20]; %defining interval
%we will break the function into several parts and then at the end combine all
x1 = stepseq(0,20,0) - stepseq(0,20,10);
x1 = x1.*n;
%x1 = n{u[n] − u[n − 10]} 
k = 10*exp(-0.3*(n-10));
x2 = k.*(stepseq(0,20,10)-stepseq(0,20,20));
%x2 = 10𝑒−0.3(𝑛−10){𝑢[𝑛 − 10] − 𝑢[𝑛 − 20]}
x = sigadd(x1,n,x2,n); %u just simply use x1+x2
figure();
stem(n,x,'r');grid on;
axis([0 20 -0.1 10.2]);
xlabel("n");ylabel("x[n]");title("Part b");

n = [-10:9]; %defining interval
xtilde = [5 4 3 2 1]; %term that is repeating
x = [xtilde , xtilde , xtilde, xtilde]; %adding copy of the repeating term
figure();
stem(n,x);grid on;
xlabel("n");ylabel("x[n]");title("Part c");
