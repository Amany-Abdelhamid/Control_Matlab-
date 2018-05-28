 num=conv([10],[1,0.3]);
den=conv([1,1,0],[1,2]);
sys=tf(num,den);
bode(sys)