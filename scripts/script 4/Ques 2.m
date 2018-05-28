num=[1,9];
den=conv([1,0],[1,4,1]);
sys=tf(num,den);
rlocus(sys)