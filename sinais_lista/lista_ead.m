clear all;
ecgAmostra = load('ecg.txt'); 
pkg load signal;
sinal = ecgAmostra(1:10000);
x = 1:1:10000;
data2 = (sinal); 
[pks2 idx2] = findpeaks(data2,"DoubleSided", 'MinPeakDistance', 100);
figure
 plot(x,data2,x(idx2),data2(idx2),"or")

 for k:100:size(data2)
   
   