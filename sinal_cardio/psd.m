#exercicio 3 PSD 
clear all;
sinal_cardio = load('sinal_cardio.txt'); 
sinal_final = rot90(sinal_cardio(:,2));

pkg load signal;

N1 = size(sinal_final,2);

fft_sinal= fft(sinal_final);
xdft_1 = fft_sinal(1:N1/2+1);

fs = 600;
freq1 = 0:fs/N1:fs/2;

psd_sinal1 = (1/fs*N1) *(abs(xdft_1).^2);
psd_sinal1(2:end-1) = 2*psd_sinal1(2:end-1);



N2 =size(sinal_final,2)/2;
xdft_2 = fft_sinal(1:N2/2+1);
freq2 = 0:fs/N2:fs/2;

psd_sinal2 = (1/fs*N2) * (abs(xdft_2).^2);
psd_sinal2(2:end-1) = 2*psd_sinal2(2:end-1);

#periodogram(sinal_cardio,rectwin(length(sinal_final)),length(sinal_final),fs);

subplot(2,1,1);
plot(freq1,xdft_1);title("DFT - N e N/2 ");
hold on
plot(freq2, xdft_2);

subplot(2,1,2);
plot(freq1,psd_sinal1); title("PSD - N e N/2 ");
hold on
plot(freq2, psd_sinal2); 