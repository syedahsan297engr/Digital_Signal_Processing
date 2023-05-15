function [y,n] = sigfold(x,n)
%SIGFOLD Summary of this function goes here
%   Detailed explanation goes here
y = fliplr(x);
n = -fliplr(n);
end

%let x = 1 2 3;
% y = 3 2 1
% n = -3 -2 -1

