#exemplo deinsidade espectral (psd power spectral density )   

clear all;
figure
Fs = 600; #taxa de amostragem
t = 0:1/Fs:1-1/Fs; #tempo variando pelo inverso da taxa de amostragem dado que t=1/f
sinal_cardio = load('sinal_cardio.txt'); 
x = rot90(sinal_cardio(1:2000,2)); #peguei só 2000 pra testar, e com isso reduzo mais ainda a resolução, ideal fazer como todo
N = length(x);

######### MINHA FFT (N) ##########
xk=zeros(1,N);
ck=zeros(1,N);
k=1:N
kernel = exp((-j*2*pi)/N);
kk = 0:N-1
for (k=1:N)
  soma = 0;
    for (n=1:N)
          xn = x(n)* (kernel^((k-1)*(n-1))) ;
          soma = soma + xn;
     endfor
     xk(k)=soma;
      ck(k)=(soma * 2 )/N;
 endfor
############################
xdft = xk(1:N/2+1);

######### DENSIDADE ESPECTRAL (N) #####
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x):Fs/2;
plot(freq,(psdx))
grid on
title('Periodogram Using FFT')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')

#N/2
######### MINHA FFT (N/2) ##########
N = N/2;
xk=zeros(1,N);
ck=zeros(1,N);
k=1:N
kernel = exp((-j*2*pi)/N);
kk = 0:N-1
for (k=1:N)
  soma = 0;
    for (n=1:N)
          xn = x(n)* (kernel^((k-1)*(n-1))) ;
          soma = soma + xn;
     endfor
     xk(k)=soma;
      ck(k)=(soma * 2 )/N;
 endfor
############################

######### DENSIDADE ESPECTRAL (N/2)  #####
hold on
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x):Fs/2;
plot(freq,(psdx))