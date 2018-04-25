clear all;
ecgAmostra = load('ecg.txt'); 
pkg load signal;
sinal = ecgAmostra(1:15000);

data2 = (sinal); 
[pks2 idx2] = findpeaks(data2,"DoubleSided", 'MinPeakDistance', 20);
figure
plot(sinal)
figure
 plot(sinal,data2,sinal(idx2),data2(idx2),".m")


