#################################
# código gerador sinal discreto #
#################################

n = 0:20;
xn = 2*(sin(2*pi));# N = K entao removi da formula
figure(2);
stem(n,xn,'filled')
hold on
#plot(t,xt,':'); # t é a funcao continua do exercicio anterior que é plotada em cima do discreto 
grid on
hold off