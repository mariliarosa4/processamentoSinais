#convolucao
y = [0.5 0.3 0.2];
x = [2 3 3 2 1 1.5 1.5];

#inverter sinal

yRot = flip(y);

#calcular g(t)

convo = zeros(size(x));
somatorio = zeros(1,size(x,2)+2);


for (i=1:size(x,2)+2)
  for(j=size(yRot,2):-1:1)
    multiplica=0;
    if (j+(i-size(yRot,2)) <=size(x,2) && j+(i-3)>=1)
    multiplica = x(j+(i-3)) * yRot(j);
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
  