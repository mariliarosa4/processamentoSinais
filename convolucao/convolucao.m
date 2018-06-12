#convolucao
y = [0.5 0.3 0.2];
x = [0 3 3 2 1 1.5 1.5];

#inverter sinal

yRot = flip(y);

#calcular g(t)

conv = zeros(size(x));
somatorio = zeros(1,size(x,2));


for (i=1:size(y,2))
  for(j=1:size(x,2))
    multiplica=0;
    if (j+(i-1)<=size(yRot,2))
    multiplica = x(j + (i-1)) * yRot(j)
    endif
    somatorio(i)= multiplica + somatorio(i)
    endfor
  conv(i) = somatorio(i);
  endfor
  
  stem(conv)