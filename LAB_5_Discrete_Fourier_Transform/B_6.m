x = [1 1 1 1];
n = 0:3;
N = 4;
X = dfs(x,N);
magX = abs(X);
disp(magX)
phaX = phase(X)*180/pi;
disp(phaX)