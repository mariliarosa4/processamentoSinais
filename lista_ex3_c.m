#deltaDira  delta=(n-0)==0;
#degrau unitario u = (n-0)>=0;
# x[n]*delta[n-3] = x[3]*delta[n]

n=-10:10;
delta3=(n-3)==0;
delta=(n-0)==0;
x = sin(n);
x2 = sin(3);
primeira = x.*delta3;
segunda =  x2*delta;
figure
stem(primeira, uf, 'filled');
figure
stem(segunda, delta, 'filled');