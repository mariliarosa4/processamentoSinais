#################################
# código gerador sinal continuo #
#################################

ts = 0.25; # frequencia de amostragem 2hz 1/2 = 0.5 t 
t = 0:ts:20; # t sendo um vetor que varia de 0 a 20 num periodo de 0.1 
xt = 2*(sin(8*pi*t));
plot(t,xt), grid on