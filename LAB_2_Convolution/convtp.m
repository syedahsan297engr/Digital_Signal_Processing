function [y,H] = convtp(h,x) % x and h are of finite duration
%CONVTP Summary of this function goes here
Nh = length(h); %return length of input x
xr = [x zeros(1,Nh-1)];
xc = [x(1) zeros(1,Nh-1)]; %h(1) some element concatenated by (1 by Nx-1) matrix of zeros
H = toeplitz(xc,xr); 
%let hc = hr = [4 5 6]
%H = [4 5 6 ; 5 4 5 ; 6 5 4]
y = h*H; %for performing convolution
end

%{
x = [1 8 3 2 5];
h = [3 5 2];
hc = 1     8     3     2     5     0     0
hr = 1     0     0
H = 
     1     8     3     2     5     0     0
     0     1     8     3     2     5     0
     0     0     1     8     3     2     5
 y = 3    29    51    37    31    29    10

A Toeplitz matrix is a diagonal-constant matrix, which means all elements along a diagonal have the same value. 
For a Toeplitz matrix A, we have Ai,j = ai–j which results in the form
%}

