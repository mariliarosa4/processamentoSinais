t0=1/5;
syms t;
x=4*cos(10*pi*t);
P=(1/t0)*int(x.^2,-t0/2,t0/2) 