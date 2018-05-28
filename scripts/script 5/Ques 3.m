num1=[1];
den1=[1,0,2];
sys1=tf(num1,den1);
figure
step(sys1)             %unit step response before compensation

num2=conv([2.33,2.33],[1,0.568]);
den2=[1,2.33,4.65344,1.32344];
sys2=tf(num2,den2);
figure
step(sys2)              %unit step response after compensation

