clear all;
ecgAmostra = load('ecg.txt'); 
pkg load signal;
#em média, os ciclos estão variando a cada 1000 amostras 
#visualizando a periodicidade dos picos
janela = 1000;
num_janelas = 10;
sinal = ecgAmostra(1:(janela*num_janelas));
dominio = 1:1:size(sinal);

[pico indice] = findpeaks(sinal,"DoubleSided", 'MinPeakDistance', 100);

#media e desvio padrao por janela com base em pulos por tamanho de janela indexadas 
#pelo numero da janela
for janela_atual=0:num_janelas-1
 

array = sinal((janela_atual*janela+1) : ((janela_atual+1)*janela));
 med(janela_atual+1) = mean(array);
 desvio_padrao(janela_atual+1) = std(array);
end

desvio_total = std(sinal);
media = mean(sinal);
N = 1:1:num_janelas;

figure
subplot(2,2,1);
ylim([-1 0])
plot(N, med, '*');
hold on
plot(N, media, '--');
subplot(2,2,2);
ylim([-2 3])
plot(N, desvio_padrao, '*');
hold on
plot(N, desvio_total, '--');
subplot(2,2,3);
plot(sinal);
subplot(2,2,4);
plot(dominio,sinal,dominio(indice),sinal(indice),"or")