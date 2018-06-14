#correlacao
pkg load signal
y = [0.5 0.3 0.2];
x = [2 3 3 2 1 1.5 1.5];

corr_verdadeira = xcorr(y,x);

subplot(2, 1, 1);
stem(corr_verdadeira);

total1 = size(y,2);
total2 = size(x,2);

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
minha_final = vertcat(rot90(minha_corr_flip),rot90(minha_corr));

  subplot(2,1,2);
  stem(minha_final);