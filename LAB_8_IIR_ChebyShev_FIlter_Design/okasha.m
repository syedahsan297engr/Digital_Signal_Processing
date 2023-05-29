eq1 = s^2+0.1054*s+0.0187;
eq2 = s^2+0.0729*s+0.0529;
eq3 = s^2+0.0260*s+0.804;
eq4 = s+0.0585;
result = expand(eq1 * eq2*eq3*eq4);

den = [1.0000    0.2628    0.8999    0.2043    0.0832    0.0011    0.0000];

s = tf('s');
H = 0.0000464/(s^2+0.1054*s+0.0187)*(s^2+0.0729*s+0.0529)*(s^2+0.0260*s+0.804)*(s+0.0585);
bode(H)

p1 = poly([0.1054 0 0.0187]);    % first equation
p2 = poly([0.0729 0 0.0529]);    % second equation
p3 = poly([0.0260 0 0.804]);     % third equation
p4 = poly([0.0585]);             % fourth equation
p = conv(conv(conv(p1,p2),p3),p4);   % multiply all the polynomials
G = tf([0.0000464],p);
bode(G)

