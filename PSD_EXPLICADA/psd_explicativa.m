#################### PSD VERSÃO EXPLICATIVA ####################3
clear all;

Fs = 40000; #taxa de amostragem
t = 0:1/Fs:1-1/Fs; #tempo variando pelo inverso da taxa de amostragem dado que t=1/f
sinal_cardio = load('sinal1.txt'); 
x = sinal_cardio;
N = size(x,1); #250000

##fft do octave##
xk=fft(sinal_cardio); #com 250000 amostras
xdft_1 = xk(1:N/2 + 1); #pegar apenas metade da FFT ja que depois da metade +1 tudo se repete

######### DENSIDADE ESPECTRAL (N) #####
psdx_1 = (1/(Fs*N)) * abs(xdft_1).^2;
psdx_1(2:end-1) = 2*psdx_1(2:end-1); #multiplicar (TODOS OS VALORES DA PSD ATÉ O FINAL -1 )por 2 para obter a amplitude real oficial
freq_1 = 0:Fs/N:Fs/2; #fs/2 pelo mesmo motivo que N/2+1 , para pegar apenas metade das frequencias para o calculo

figure
plot(freq_1,(psdx_1)) #plotar em relação as frequencias