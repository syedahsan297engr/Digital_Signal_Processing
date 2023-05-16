function [y,H] = conv_tp_matrix(h,x) % x and h are of finite duration
%CONVTP Summary of this function goes here
%we have to give column vector as an input here
Nx = length(x);
hc = [h, zeros(Nx-1,1)]; 
hr = [h(1), zeros(1,Nx-1)];
H = toeplitz(hc,hr); 
y = H*x;
end

%{
x = [1; 2; 3; 4; 5];
h = [6; 7; 8; 7];
Nx = 5
hc = [6 7 8 7 
%}

