#fft 
clear all
#TO-DO discretização do sinal

x = [6  4  9  0  1  5  2  7];

N = 8;
xk=zeros(N);
k=1:N

#j = sqrt (-1);
kernel = exp((-j*2*pi)/N);
for (k=1:N)
  soma = 0;
    for (n=1:N)
          xn = x(n)* (kernel^((k-1)*(n-1))) ;
          soma = soma + xn;
     endfor
     xk(k)=soma;
 endfor
 
 figure
 fftVerdadeira =  fft(x)
 stem(fftVerdadeira);
 
 figure
 stem(xk);

 
