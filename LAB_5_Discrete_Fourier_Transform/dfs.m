function [Xk] = dfs(xn,N)
% Computes Discrete Fourier Series Coefficients
% _____________________________________________
% [Xk] = dfs(xn,N)
% Xk = DFS coeff. array over 0 < k < N-1
% xn = One period of periodic signal over 0 < n < N-1
% N = Fundamental period of xn
%
%if N = 4
n = [0:1:N-1]; % row vector for n
k = [0:1:N-1]; % row vecor for k
WN = exp(-j*2*pi/N); % Wn factor
nk = n'*k; % creates a N by N matrix of nk values
%{
     nk = 
     0     0     0     0
     0     1     2     3
     0     2     4     6
     0     3     6     9
%}
WNnk = WN .^ nk; % DFS matrix nk will be in power the code is the same as you implemented formula in theory
%{
   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i
   1.0000 + 0.0000i   0.0000 - 1.0000i  -1.0000 - 0.0000i  -0.0000 + 1.0000i
   1.0000 + 0.0000i  -1.0000 - 0.0000i   1.0000 + 0.0000i  -1.0000 - 0.0000i
   1.0000 + 0.0000i  -0.0000 + 1.0000i  -1.0000 - 0.0000i   0.0000 - 1.0000i
%}
Xk = xn * WNnk; % row vector for DFS coefficients
end
