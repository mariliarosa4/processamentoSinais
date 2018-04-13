pkg load signal
#
 fs = 1;  # arbitrary sample rate
     # pulse train sample rate
 w = 1;  # pulse width 1/10th the distance between pulses
 x = pulstran(-10:1:-4,-4:1:4, 'rectpuls', w);
 plot([0:length(x)-1]*1/fs, x);
 ylim([-0.5 2]);
 ylabel("amplitude"); xlabel("time (ms)");
 title("graph shows 3 ms pulses at 0,10,20,30 and 40 ms")