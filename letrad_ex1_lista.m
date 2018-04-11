
f0 = 4;
k=4;
ts = 1/k*f0;
  N = 2*(1/(ts/pi));
# N = 100;
n=0:N-1;
x  = 2 * sin(((2*pi)/k)*n);
 plot(n,x)

  
  #somatório energia do sinal discretizado
  e = 0; 
  for i = 1:length(x)
    e = e+(x(i))^2;
  end
   #somatório potencia do sinal discretizado
  p = 0;
  for i = 1:length(x)
    p = p+(x(i))^2;
  end
  p = p/N;
p
e
  
  #Potencia# O valor da potencia não se altera ainda que aumente o numero de amostras (apenas em casas decimais)
           # Isso ocorre pela divisão do numero da amostra na equação potencia, igualando as porporções 
  
  #Energia# O valor da energia aumenta quando aumentamos o número de amostras proporcionalmente