clear 
%pkg load signal
#
# fs = 1;  # arbitrary sample rate
     # pulse train sample rate
 #w = 8;  # pulse width 1/10th the distance between pulses
# x = pulstran(-1:0.1:0,1:0.01:2, 'rectpuls', w);
 #plot([0:length(x)-1]*1/fs, x);
 #ylim([-0.5 1.5]);
 #ylabel("amplitude"); xlabel("time (ms)");
 #title("graph shows 3 ms pulses at 0,10,20,30 and 40 ms")
 

 t1 =-10:1:-4;
 t2=-4:1:4;
 t3=4:1:10;
 t=[t1 t2 t3];
 x1 = zeros(size(t1));
 x2 = ones(size(t2))*1.5;
 x3 = zeros(size(t3));
 
 x = [x1 x2 x3];
 plot (t,x);
 ylim([-0.5 2]);