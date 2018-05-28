t=0:0.1:100;
  for a=[1 5 100]
num=[4*a];
den=conv([1,a],[1,2,4]);
sys=tf(num,den);
figure
step(sys)
s=strcat('StepRes a=',num2str(a));
title(s)
axis([0 t(end) 0 1.5])
figure
impulse(sys)
str=strcat('ImpulseRes a=',num2str(a));
title(str)
axis([0 t(end) 0 1.5])
  end