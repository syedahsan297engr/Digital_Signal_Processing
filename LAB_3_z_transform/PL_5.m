%calculate z_transform and write it in z^-1 form
%then define b and a b includes num coeff and a includes denom coef
b = [0 1];
a = [3 -4 1];
[R,p,C] = residuez(b,a)

%converting back to rational fraction form
[b,a] = residuez(R,p,C)

