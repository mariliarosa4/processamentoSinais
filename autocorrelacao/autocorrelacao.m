#autocorrelacao

clear all;
ecgAmostra = load('ecg.txt'); 
pkg load signal;

janela = 1; #trocar pra 1000
num_janelas = 10;

sinal = ecgAmostra(1:(janela*num_janelas)); #pegando uma parte do sinal de 10 mil amostras

pronta = xcorr(sinal);
somatorio = zeros(size(sinal));
corr = zeros(size(sinal));

for (i=1:10)
  cont=0;
  for(j=1:10)
    multiplica=0;
    if (((j-1)+i)<=10)
    multiplica = sinal(j) * sinal((j-1)+i);
    endif
    cont = cont+1;  
    somatorio(i)= multiplica + somatorio(i);
    endfor
  corr(i) = somatorio(i);
  endfor
