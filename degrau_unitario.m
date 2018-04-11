#pkg install -forge symbolic
#https://github.com/cbm755/octsympy/wiki/Notes-on-Windows-installation
pkg load symbolic;
syms t;
x=heaviside(t);
ezplot(t, x);