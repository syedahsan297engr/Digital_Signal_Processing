n = [-2:10]; %interval
x = [-1, 2, 3, 4, 5, 6, 7, 6, 5, 4, 3, -2, 1]; %values at specific instants
figure();
stem(n,x); %plotting actual signal
axis([-3 11 -3 8]); grid on;
title("Actual Signal"); xlabel("n"); ylabel("x[n]")

[x1,n1] = sigshift(x,n,5); %using func sigshift already implemented for shifting signal
[x2,n2] = sigshift(x,n,-4);
x1 = 2.*x1; x2 = 3.*x2;
[x,n] = sigadd(x1,n1,-x2,n2); %we have sigadd here because when signals are shifted we are not able to use + operator directly rather we use sigadd function already implemented so that there will be addition on corresponding indexes
figure();
stem(n,x); grid on;
title("2𝑥[𝑛 − 5] − 3𝑥[𝑛 + 4]"); xlabel("n")

n = [-2:10];
x = [-1, 2, 3, 4, 5, 6, 7, 6, 5, 4, 3, -2, 1];
[i,j] = sigshift(x,n,-5);%-5 means n+5 basically
[x1,n1] = sigfold(i,j);%dealing with -n
[x2,n2] = sigshift(x,n,-7); %297
x2 = 3.*x2; x1 = 4.*x1;
[x,n] = sigadd(x1,n1,-x2,n2);
figure();
stem(n,x); grid on;
title("4𝑥[5 − 𝑛] − 3𝑥[𝑛 + 𝑙𝑎𝑠𝑡 𝑑𝑖𝑔𝑖𝑡 𝑜𝑓 𝑦𝑜𝑢𝑟 𝑠𝑡𝑢𝑑𝑒𝑛𝑡 𝐼𝐷]")
xlabel("n")




