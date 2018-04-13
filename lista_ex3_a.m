#deltaDira  delta=(n-0)==0;
#degrau unitario u = (n-0)>=0;
# delta[n] = u[n] - u[n-1]
n=-10:10;
delta=(n-0)==0;
u1 = (n-0)>=0;
u2 = (n-1)>=0;
uf = u1-u2;
figure
stem(n, uf, 'filled');
figure
stem(n, delta, 'filled');