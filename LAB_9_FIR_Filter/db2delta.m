function [delta1,delta2] = db2delta(Rp,As)
%Rp and As formula are given in manual above you should derive delta1 and
%delta2 from those formulas and implement those formulaes.
delta1 = (1 + ( (10^(Rp/-20))*(10^(As/-20)) ) - (10^(Rp/-20)) ) / (1 - ( (10^(Rp/-20))*(10^(As/-20)) ));
delta2 = (10^(As/-20) )* (1+delta1); 
end

%The antilog of a number is equal to 10 raised to the number. For example, antilog (5) = 105. So we use the formula antilog (x) = 10x to find the antilog using a calculator.


