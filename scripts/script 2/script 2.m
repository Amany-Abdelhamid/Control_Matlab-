syms s c1(t) c2(t) q(t) ;
sys1=(2*4)/(s^3+2*(s^2)+4*s);
c1=ilaplace(sys1);
RMS=double.empty(0,10);
a=1:1:10;
for i=1:1:10
sys2=(2*4*i)/(s*(s+i)*(s^2+2*s+4));
c2=ilaplace(sys2);
q=((c1-c2)^2);
v=subs(q,t,0:0.1:100);
d=sum(v);
summ=double(d);
ss=sum(0:0.1:100);
r=summ/ss;
RMS(i)=sqrt(r);
end
plot(a,RMS)
title('RMS vs a');
