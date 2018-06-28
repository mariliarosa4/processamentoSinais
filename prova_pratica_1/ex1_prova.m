
#x = 2*sin(pi*t+(pi/4));
f0 = pi; 
k=2*pi;
ts = 1/k*f0;
N = 20;
n=-5:N-1;

x = 2*sin(pi*n*ts+(pi/4));
figure
stem(n, x, 'filled')
hold on
plot(n, x)

delta=(n-0)==0;
figure
stem(n, delta, 'filled')
final =x .* delta;
figure
plot(n, final)
 ylim([-5 5]);