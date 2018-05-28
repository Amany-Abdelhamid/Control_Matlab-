num=conv([2],[1,1]);
den=conv([1,3,0,0],[1,6]);
sys=tf(num,den);
rlocus(sys)