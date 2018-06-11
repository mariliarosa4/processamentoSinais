#exemplo deinsidade espectral (psd power spectral density )   

#calculo da fft usando a funcao do octave
Fs = 1000;
t = 0:1/Fs:1-1/Fs;
x = cos(2*pi*100*t);
N = length(x);
xdft = fft(x);
xdft = xdft(1:N/2+1);

% vamos construir a densidadeespectral de potência:
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x):Fs/2;
plot(freq,(psdx))
grid on
title('Periodogram Using FFT')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')