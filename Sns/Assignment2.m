clear all;
close all;
clc;
x=linspace(-1,1,100);
y=sqrt(1-(x.^2));
a=linspace(2,4,100);
b=sqrt(1-(a-3).^2);
c=linspace(1,1.5,25)
y1=2*(1-c);
d=linspace(1.5,2,25);
y2=(d-2)/0.5;
z1=[x c ];
z2=[z1 d];
z=[z2 a];
q1=[y y1];
q2=[q1 y2];
q=[q2 b];
subplot(6,2,[1,2]);
plot(z,q);
title('original signal x(t)');
subplot(6,2,3)
plot(z.*0.5,q);
title(' x(2t)');
subplot(6,2,4);
plot(z.*2,q);
title(' x(0.5t)');
subplot(6,2,5)
plot(z.*0.5,3*q);
title(' 3x(2t)');
subplot(6,2,6);
plot(z.*2,3*q);
title(' 3x(0.5t)');
subplot(6,2,7);
plot((z-3).*0.5,q);
title(' x(2t+3)');
subplot(6,2,8);
plot((z-3).*2,q);
title(' x(0.5t+3)');
subplot(6,2,9);
plot((z+3).*2,4*q);
title(' 4x(0.5t-3)');
subplot(6,2,10);
plot(((-z)-4).*(1/3),-2*q);
title(' -2x(-3t-4)');
subplot(6,2,11);
plot(((-z)+6).*3,-2*q);
title(' -2x(-3t+6)');
subplot(6,2,12);
plot(((-1*(z+2))+2).*3,-2*q);
title(' -2x(-3(t+2)+2)');