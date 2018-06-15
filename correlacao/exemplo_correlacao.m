N=50; %Número de amostras no gráfico.
fo = 2; %frequência do sinal x
Ts=1/40;
n=0:N-1;
x=cos(2*pi*fo*n*Ts);
fu = 10; %frequência do sinal u
Tu = 1/100;
y=cos(2*pi*fu*n*Tu);


corr_verdadeira = xcorr(y,x);

total1 = size(y,2);
total2 = size(x,2);

subplot(2, 1, 1);
stem(corr_verdadeira(1,1:50));

somatorio = zeros(1,total2);
minha_corr = zeros(1,total2);

for (i=1:total2)
  for(j=1:total1)
    multiplica=0;
    if (((j-1)+i)<=total2)
    multiplica = y(j) * x((j-1)+i);
    endif
    somatorio(i)= multiplica + somatorio(i);
    endfor
  minha_corr(i) = somatorio(i);
  endfor
  
minha_corr_flip = flip(minha_corr);
minha_final = vertcat(rot90(minha_corr),rot90(minha_corr_flip));

  subplot(2,1,2);
  stem(minha_corr_flip);