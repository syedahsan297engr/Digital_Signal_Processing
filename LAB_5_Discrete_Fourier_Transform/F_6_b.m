n = 0:10;
x = 10 * 0.8.^n;
N = 11;
%first circular fold seq.
x1=x(mod(-n,N)+1);
%then find dft
Xk = dfs(x1,11);

%first find dfs
df_x = dfs(x,11);
%then fold
x2=df_x(mod(-n,N)+1);
disp(Xk)
disp(x2)
subplot(2,1,1)
stem(n,abs(Xk))
subplot(2,1,2)
stem(n,abs(x2))
%title("circular folding")
disp('Circular Folding Property prove')
