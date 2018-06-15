#convolucao
#y = [0.5 0.3 0.2];
#x = [2 3 3 2 1 1.5 1.5];

N=50; %Número de amostras no gráfico.
fo = 2; %frequência do sinal x
Ts=1/40;
n=0:N-1;
x=cos(2*pi*fo*n*Ts);
fu = 10; %frequência do sinal u
Tu = 1/100;
y=cos(2*pi*fu*n*Tu);

#inverter sinal

yRot = flip(y);

#calcular g(t)
ty = size(y,2);
tx = size(x,2);
tfinal = ty+tx-1;
convo = zeros(1,tfinal);

somatorio = zeros(1,tfinal);


for (i=1:tfinal)
  for(j=ty:-1:1)
    multiplica=0;
    if (j+(i-size(yRot,2)) <=size(x,2) && j+(i-ty)>=1)
    multiplica = x(j+(i-(ty))) * yRot(j);
    endif
    somatorio(i)= multiplica + somatorio(i);
    endfor
  convo(i) = somatorio(i);
  endfor
  
  subplot(2,1,1);
  stem(convo);title("minha convolucao");
  
  subplot(2,1,2);
  
  verdadeira = conv(x,y);
  stem(verdadeira);title("Conv octave");
  