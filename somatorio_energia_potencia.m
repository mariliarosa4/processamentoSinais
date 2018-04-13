  

  Ts=pi/2;
  
  N=2*(1/(Ts/pi)); #Busca o Total de amostras pelo Ts 
  n = 0:(N-1);

  x = cos(n*Ts);  
  
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

 stem(x); 