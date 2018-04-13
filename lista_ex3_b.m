#deltaDira  delta=(n-0)==0;
#degrau unitario u = (n-0)>=0;
# delta[n-2] = u[n-2] - u[n-3]

n=-10:10;
delta=(n-2)==0;
u1 = (n-2)>=0;
u2 = (n-3)>=0;
uf = u1-u2;
figure
stem(n, uf, 'filled');
figure
stem(n, delta, 'filled');