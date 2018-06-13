#exercicio 3 PSD 
clear all;
sinal_cardio = load('sinal_cardio.txt'); 
sinal_final = rot90(sinal_cardio(:,2));
pkg load signal;
N = size(sinal_final,2);

subplot(2,1,1);
fft_sinal= fft(sinal_final);
stem(fft_sinal); title("fft");

subplot(2,1,2);
fs = 600;
psd_sinal = (1/fs*N) * abs(fft_sinal).^2;

stem(psd_sinal); title("psd");