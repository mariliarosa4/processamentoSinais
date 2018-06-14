#fft 
clear all
#TO-DO discretização do sinal

#x = [6  4  9  0  1  5  2  7];
x=[2 2 4 4 6];
#x=[0 1 2 3];
N = size(x,2);
xk=zeros(1,N);
ck=zeros(1,N);
k=1:N

#j = sqrt (-1);

#kernel =-j; #//simula a simplificação feita para o calculo manual 

kernel = exp((-j*2*pi)/N);
kk = 0:N-1
for (k=1:N)
  soma = 0;
    for (n=1:N)
          xn = x(n)* (kernel^((k-1)*(n-1))) ;
          soma = soma + xn;
     endfor
     xk(k)=soma;
      ck(k)=(soma * 2 )/N;
 endfor
 
 subplot(2, 2, 1);
 fftVerdadeira =  fft(x)
 stem(abs(fftVerdadeira));title("fft octave");
 
 subplot(2, 2, 2);
 stem(abs(xk));title("Minha fft -x[k]");
 
fs = 30;
subplot(2, 2, 3); 
stem((kk* fs / N), angle(xk));ylabel('fase');title("fase por frequencia");

subplot(2, 2, 4); 
stem(abs(ck));title("Minha fft - C[k]");

