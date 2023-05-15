% implement y(n) = x(n-n0)
% x = samples of original signal
% m = index values of the signal
% n0 = shift amount , may be positive or negative
% [y,n] = sigshift(x,m,n0)

function [y,n] = sigshift(x,m,n0)
n = m+n0;
y = x;
end
