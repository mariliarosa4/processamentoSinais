#autocorrelacao

clear all;
ecgAmostra = load('ecg.txt'); 
pkg load signal;

janela = 935; #trocar pra 1000
num_janelas = 1;

sinal = ecgAmostra(1:(janela*num_janelas)); #pegando uma parte do sinal de 10 mil amostras

pronta = xcorr(sinal);
somatorio = zeros(size(sinal));
corr = zeros(size(sinal));

for (i=1:janela)
  for(j=1:janela)
    multiplica=0;
    if (((j-1)+i)<=janela)
    multiplica = sinal(j) * sinal((j-1)+i);
    endif
   
    somatorio(i)= multiplica + somatorio(i);
    endfor
  corr(i) = somatorio(i);
  endfor
