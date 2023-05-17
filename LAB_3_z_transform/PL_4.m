n = 0:7;
x = [(n-2).*(1/2).^(n-2).*cos(pi*(n-2)/3)].*stepseq(0,7,2);
disp(x)

%2nd way is that we calculate z_transform and then use filter
b = [0,0,0,0.25,-0.5,0.0625];
a = [1,-1,0.75,-0.25,0.0625];
[x,n]=imseq(0,7,0);
x=filter(b,a,x);
disp(x)
