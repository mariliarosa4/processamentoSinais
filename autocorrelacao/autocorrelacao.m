#autocorrelacao

clear all;
ecgAmostra = load('ecg.txt'); 
pkg load signal;

<<<<<<< HEAD
janela = 935; #trocar pra 1000
num_janelas = 1;
=======
janela = 1000; #trocar pra 1000
num_janelas = 2;
total = janela * num_janelas;
>>>>>>> 525d28980561e47da2e6b8fe3a2ca774d2b55269

sinal = ecgAmostra(1:(total)); #pegando uma parte do sinal de 10 mil amostras

pronta = xcorr(sinal);
somatorio = zeros(size(sinal));
autocorr = zeros(size(sinal));

<<<<<<< HEAD
for (i=1:janela)
  for(j=1:janela)
    multiplica=0;
    if (((j-1)+i)<=janela)
    multiplica = sinal(j) * sinal((j-1)+i);
    endif
   
=======
for (i=1:total)
  for(j=1:total)
    multiplica=0;
    if (((j-1)+i)<=total)
    multiplica = sinal(j) * sinal((j-1)+i);
    endif
>>>>>>> 525d28980561e47da2e6b8fe3a2ca774d2b55269
    somatorio(i)= multiplica + somatorio(i);
    endfor
  autocorr(i) = somatorio(i);
  endfor

figure
subplot(1,2,1);
stem(pronta)
title('Função xcorr');

corr_flip = flip(autocorr);
autocorr_final = vertcat(corr_flip,autocorr);

subplot(1,2,2);
stem(autocorr_final)
title("Função própria");