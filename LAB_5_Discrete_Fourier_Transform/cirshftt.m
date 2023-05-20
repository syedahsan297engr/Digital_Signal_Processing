function y = cirshftt (x,m,N)
    % Circular shift of m samples urt size N in sequence X: (time domain)
    %____________________________________________________________________
    % Cyl = cirshftt(x,m,N)
    % y = output sequence containing the circular shift
    % X = input sequence of length <= N
    % m = sample shift
    % N = size of circular buffer
    % Method: y(n) = x((n-m) mod N)
    % Check for length of x
    if length(x) > N
    error('N must be >= the length of X')
    end
    x = [x zeros(1, N-length(x))];
    n=(0:1:N-1);
    n = mod1(n-m, N); % 𝑥2((𝑛 − 𝑚)) indicating mod1(n-m)
    y=x(n+1);%x=x(mod(-n,N)+1)
end

%{
x = [x zeros(1, N-length(x))]
if x = 1 2 2 N = 4
x = 1 2 2 0

%}
