clear all;
ecgAmostra = load('ecg.txt'); 
pkg load signal;

#em média, os ciclos estão variando a cada 1000 amostras visualizando a periodicidade dos picos
janela = 1000;
num_janelas = 10;
sinal = ecgAmostra(1:(janela*num_janelas));
dominio = 1:1:size(sinal);
[pico indice] = findpeaks(sinal,"DoubleSided", 'MinPeakDistance', 100);

#plotando 10 ciclos e seus picos com base na media de 1000 amostras por ciclo
figure
plot(dominio,sinal,dominio(indice),sinal(indice),"or")
title("10000 amostras e seus picos, com 10 ciclos de 100 amostras");
#media e desvio padrao por janela com base em pulos por tamanho de janela indexadas 
#pelo numero da janela
for janela_atual=0:num_janelas-1
  array = sinal((janela_atual*janela+1) : ((janela_atual+1)*janela));
  media_janela(janela_atual+1) = mean(array);
  desvio_padrao(janela_atual+1) = std(array);
end

#calculando desvio e media do sinal completo
desvio_total = std(sinal);
media = mean(sinal);
N_pico = 1:1:size(indice);
N = 1:1:num_janelas;
#calculando desvio e media utilizando janelas espaçadas pelos picos
#tamanho da janela variavel entre 928 e 935 aproximadamente 
for janela_atual_pico=1:size(indice)-1
  array_entre_picos = sinal(indice(janela_atual_pico) : indice(janela_atual_pico+1));
  media_picos(janela_atual_pico+1) = mean(array_entre_picos);
  desvio_padrao_picos(janela_atual_pico+1) = std(array_entre_picos);
end

#média com janelas igualmente espaçadas e entre picos 
figure
subplot(1,2,1);
ylim([-1 0])
plot(N, media_janela, '*');
hold on
plot(N, media);
str_media = sprintf(['Média com janelas igualmente espaçadas, MÉDIA SINAL TOTAL = ' num2str(desvio_total)]); 
title(str_media);
subplot(1,2,2);
ylim([-1 0])
plot(N_pico, media_picos, '*');
hold on
plot(N_pico, media);
title("Média com janelas entre picos");
#desvio com janelas igualmente espaçadas e entre picos

figure
subplot(1,2,1);
ylim([0 2])
plot(N, desvio_padrao, '*');
hold on
plot(N, desvio_total);
str_dp = sprintf(['Desvio padrão com janelas igualmente espaçadas, DP SINAL TOTAL = ' num2str(desvio_total)]); 
title(str_dp);
subplot(1,2,2);
ylim([0 2])
plot(N_pico, desvio_padrao_picos, '*');
hold on
plot(N_pico, desvio_total);
title("Desvio padrão com janelas entre picos");
