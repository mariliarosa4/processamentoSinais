%Exemplo do teorema de Nyquist
% Lembrar que: x[n] = x[nTs] = cos[2*pi*fo*n*Ts], ou seja, t =n.Ts
N=100; %N�mero de amostras no gr�fico.
fo = 45; %frequ�ncia do sinal
Ts=1/90; %Per�odo de amostragem (intervalo de tempo entre duasamostras) de 11,111 ms, ou 90 amostras por segundo.
n=0:N-1; % variando de zero at� a �ltima amostra a ser lida.
x=cos(2*pi*fo*n*Ts); % o Matlab expandir� o argumento para umalista de 2*pi*Ts para cada n.
stem(n,x) % exibe as amostras sem conect�-las