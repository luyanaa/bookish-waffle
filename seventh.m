x = [0, pi/6, pi/4, pi/3, pi/2];
y = cos(x);

f = lagrange(x,y,pi/8);

figure;
hold on;
plot(x,y,'ro',[pi/8],[f],'bo');
hold off;

figure;
% abs(x) 会发生 Runge 现象
xx = linspace(-5,5,1000);
yy = abs(xx);
for n = 1:18
    clf;
    hold on;
    x = linspace(-5,5,n+1);
    y  = 1./(1+x.^2);
    yn = lagrange(x,y,xx);
    plot(xx,yy,'r-','linewidth',2);
    plot(xx,yn,'b-');
    plot(x,y,'k.','markersize',10);
    title([num2str(n) '-order lagrange']);
    axis([-5 5 -4 8]);
    pause(1);
end
hold off;

figure;
% cos(x) 会发生 Runge 现象
xx = linspace(-pi*2,2*pi,1000);
yy = cos(xx);
for n = 1:18,
    clf;
    hold on;
    x = linspace(-5,5,n+1);
    y  = 1./(1+x.^2);
    yn = lagrange(x,y,xx);
    plot(xx,yy,'r-','linewidth',2);
    plot(xx,yn,'b-');
    plot(x,y,'k.','markersize',10);
    title([num2str(n) '-order lagrange']);
    axis([-5 5 -4 8]);
    pause(1);
end
hold off;

figure;
% x^3 会发生 Runge 现象
xx = linspace(-pi*2,2*pi,1000);
yy = xx.^3;
for n = 1:18,
    clf;
    hold on;
    x = linspace(-5,5,n+1);
    y  = 1./(1+x.^2);
    yn = lagrange(x,y,xx);
    plot(xx,yy,'r-','linewidth',2);
    plot(xx,yn,'b-');
    plot(x,y,'k.','markersize',10);
    title([num2str(n) '-order lagrange']);
    axis([-5 5 -4 8]);
    pause(1);
end
hold off;

xx = [1:10];
yy = [244.0,221.0,208.0,211.5,216.0,219.0,208.1,213.5,220.5,232.7];
[k,b]=linear(xx,yy);

figure;
hold on;
plot(xx,yy);

x = linspace(1,10,100);
y=interp1(xx,yy,x,'spline');
plot(x,y);
hold off;

xx = [0.1, 0.8, 1.3, 1.9, 2.5, 3.1];
yy = [1.2, 1.6, 2.7, 2.0, 1.3, 0.5];
figure;
hold on;
x = linspace(0,5,100);
y=interp1(xx,yy,x,'spline');
plot(x,y);
y=interp1(xx,yy,x,'linear');
plot(x,y);
hold off;
