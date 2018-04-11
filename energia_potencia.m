#PADRAO####
clear all;#
clc       #
figure(1);#
###########

#C�LCULO DE ENERGIA TOTAL E POT�NCIA M�DIA DE SINAL *****AMOSTRADO****


  #EXEMPLO COM cos(n*(pi/5))
  
  
  #### MUDE AQUI SEU TEMPO DE AMOSTRAGEM #########
  Ts=pi/5; #Tempo de amostragem (relativo a n*Ts)#
  ################################################
  
  N=2*(1/(Ts/pi)); #Busca o Total de amostras pelo Ts 
  n = 0:(N-1);

  x = cos(n*Ts); #INSIRA AQUI SUA FUN��O (troque tamb�m a string abaixo)
  #Onde o quant�nuo 't' � o discreto 'n*Ts' 
  x_string=(['cos(n*pi/',num2str(N/2),')']);

  
  #CALCULO DE ENERGIA TOTAL
  e = 0; #Inicia vari�vel energia
  for i = 1:length(x)
    e = e+(x(i))^2;
  end
  
  #CALCULO DE POTENCIA MEDIA
  p = 0; #Inicia vari�vel potencia
  for i = 1:length(x)
    p = p+(x(i))^2;
  end
  p = p/N;
  
  
  ###############################################################
  #Plota gr�fico e informa��es de energia e potencia
 stem(x); 
 title(x_string); 
 xlabel(['Pot�ncia M�dia: ',num2str(p),' | Energia Total: ',num2str(e)]);
  
 #usar o disp do sinal somente quando Ts>pi/50 
 #disp('Sinal Amostrado:');
 #disp(x); 
 disp(['Funcao: ',num2str(x_string)]); 
 disp(['Ts: ' num2str(Ts)]); 
 disp(['N: ' num2str(N)]); 
 disp(['Potencia Media: ',num2str(p)]);
 disp(['Energia Total: ',num2str(e)]);
