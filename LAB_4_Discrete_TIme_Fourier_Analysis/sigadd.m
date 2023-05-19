% implement y(n) = x1(n) + x2 (n)
% [y,n] = sigadd (x1,n1,x2,n2)
% y = sum sequence over n, which include n1 and n2
% x1 = first sequence over n1
% x2 = second sequence over n2 (n2 can be different from n1)
function [y,n] = sigadd(x1,n1,x2,n2)
n = min(min(n1),min(n2)) : max(max(n1), max(n2));
y1 = zeros(1,length(n));
y2 = y1;

y1(find((n>=min(n1))&(n<=max(n1))==1)) = x1; % x1 with duration of y
y2(find((n>=min(n2))&(n<=max(n2))==1))=  x2; % x2 with duration of y
%find (MATLAB Functions) k = find(X) returns the indices of the array X that point to nonzero elements.

y = y1+y2;

end

%{
%(n>=min(n1))&(n<=max(n1))==1 = 0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1
%find on it returns indexes as = 6     7     8     9    10    11    12    13    14    15    16
%y1(find((n>=min(n1))&(n<=max(n1))==1)) = all zeros
% at indexes return by find x1 values are placed
%}