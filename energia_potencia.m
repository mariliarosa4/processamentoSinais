#PADRAO####
clear all;#
clc       #
figure(1);#
###########

#CÁLCULO DE ENERGIA TOTAL E POTÊNCIA MÉDIA DE SINAL *****AMOSTRADO****


  #EXEMPLO COM cos(n*(pi/5))
  
  
  #### MUDE AQUI SEU TEMPO DE AMOSTRAGEM #########
  Ts=pi/5; #Tempo de amostragem (relativo a n*Ts)#
  ################################################
  
  N=2*(1/(Ts/pi)); #Busca o Total de amostras pelo Ts 
  n = 0:(N-1);

  x = cos(n*Ts); #INSIRA AQUI SUA FUNÇÃO (troque também a string abaixo)
  #Onde o quantínuo 't' é o discreto 'n*Ts' 
  x_string=(['cos(n*pi/',num2str(N/2),')']);

  
  #CALCULO DE ENERGIA TOTAL
  e = 0; #Inicia variável energia
  for i = 1:length(x)
    e = e+(x(i))^2;
  end
  
  #CALCULO DE POTENCIA MEDIA
  p = 0; #Inicia variável potencia
  for i = 1:length(x)
    p = p+(x(i))^2;
  end
  p = p/N;
  
  
  ###############################################################
  #Plota gráfico e informações de energia e potencia
 stem(x); 
 title(x_string); 
 xlabel(['Potência Média: ',num2str(p),' | Energia Total: ',num2str(e)]);
  
 #usar o disp do sinal somente quando Ts>pi/50 
 #disp('Sinal Amostrado:');
 #disp(x); 
 disp(['Funcao: ',num2str(x_string)]); 
 disp(['Ts: ' num2str(Ts)]); 
 disp(['N: ' num2str(N)]); 
 disp(['Potencia Media: ',num2str(p)]);
 disp(['Energia Total: ',num2str(e)]);
