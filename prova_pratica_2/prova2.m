
clear all;

Fs = 40000; #taxa de amostragem
t = 0:1/Fs:1-1/Fs; #tempo variando pelo inverso da taxa de amostragem dado que t=1/f
sinal_cardio = load('sinal1.txt'); 
x = sinal_cardio;
N = size(x,1);

##fft do octave##
xk=fft(sinal_cardio);
xdft_1 = xk(1:N/2+1);

######### DENSIDADE ESPECTRAL (N) #####
psdx_1 = (1/(Fs*N)) * abs(xdft_1).^2;
psdx_1(2:end-1) = 2*psdx_1(2:end-1);
freq_1 = 0:Fs/length(x):Fs/2;

#N/2 ###################
N = N/2;
xk=fft(sinal_cardio(1:N));
xdft_2 = xk(1:N/2+1);
############################

######### DENSIDADE ESPECTRAL (N/2)  #####
psdx_2 = (1/(Fs*N)) * abs(xdft_2).^2;
psdx_2(2:end-1) = 2*psdx_2(2:end-1);
freq_2 = 0:Fs/N:Fs/2;

#individuais
figure
plot(freq_1,(psdx_1))
figure
plot(freq_2,(psdx_2))

#sobrepostas
figure
plot(freq_1,(psdx_1))
hold on
plot(freq_2,(psdx_2))