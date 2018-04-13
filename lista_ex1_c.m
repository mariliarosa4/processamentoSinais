f0 = 4;
k=8;
N=k; # para esse exercicio o periodo fundamental
N = 8;
ts = 1/k*f0;
n=0:N;
x  = 2 * sin(((2*pi)/k)*n);
 plot(n,x)
