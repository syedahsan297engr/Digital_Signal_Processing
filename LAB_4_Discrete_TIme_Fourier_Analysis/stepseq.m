function [x,n] = stepseq(n1,n2,n0)
if ((n0<n1) | (n0>n2) | (n1>n2))
    Error('arguments must satisfy n1 <= n0 <= n2')
end
n = n1:n2;
x = [(n-n0)>=0];
end

