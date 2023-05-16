% Modified convolution routine for signal processing
% [y,ny] = conv_m(x,nx,h,nh)
% [y,ny] = convolution result
% x = original signal
% nx = index values
% h = impulse response signal
% nh = index values for impulse response

function [y,ny] = conv_m(x,nx,h,nh)
nyb = nx(1) + nh(1); %starting value for indexes is measured
nye = nx(length(x)) + nh(length(h));
ny = [nyb:nye];
y = conv(x,h);
end

