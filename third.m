% Task 1
figure;
hold on
x1 = 0:pi/120:pi/2;
y1 = sin(x1);
fill([x1,pi/2],[y1,0],'r');
x2 = 0:pi/120:pi*2;
y2 = cos(x2);
y3 = sin(x2);
plot(x2,y2,'b');
plot(x2,y3,'r');
line([0,2*pi],[0,0]);
title('Task 1');
hold off

% Task 2
figure;
hold on
x = -5:0.1:5;
subplot(2,2,1)
title('Task 2.1');
plot(x,sin(2*x));
subplot(2,2,2)
title('Task 2.2');
plot(x,tan(x));
subplot(2,2,3)
title('Task 2.3');
plot(x,log(x));
subplot(2,2,4)
title('Task 2.4');
plot(x,10.^x);
hold off

% Task 3 
figure;
hold on;
y=[213,387,220,280,280,180];
bar(y);
name={'计算机系','外语系','音乐系','美术系','中文系','理学院'};
for i=1:6
text(i-0.5,y(i)+20,strcat(name(i),num2str(y(i))));
end
figure;
for i=1:6
name(i)=strcat(name(i),num2str(y(i)));
end
subplot(2,1,1);
pie(y,name);
subplot(2,1,2);
X = categorical({'计算机系','外语系','音乐系','美术系','中文系','理学院'});
X = reordercats(X,{'计算机系','外语系','音乐系','美术系','中文系','理学院'});
bar(X,y);
hold off;

title('Task 3');
hold off;

% Task 4
figure;
hold on;
x=linspace(-3,3,100);
y=linspace(-2,2,80);
[X,Y]=meshgrid(x,y);
z=X.^2+exp(Y).*abs(X)./(X.^4+1);
mesh(x,y,z);
title('Task 4');
hold off;

% Task 5
figure;
hold on;
t=linspace(0,2*pi,500);
x=sin(t);
y=t.^2+exp(t);
title('Task 5');
comet(x,y);
hold off;

% Task 6
figure;

subplot(2,2,1);
hold on;
t=0:0.01:2*pi;
y=cos(7*t/2);
polar(t,y);
title('Task 6.1');
hold off;

subplot(2,2,2);
hold on;
y=sin(t)./t;
polar(t,y);
title('Task 6.2');
hold off;


subplot(2,2,3);
hold on;
y=1-cos(7*t).^3;
polar(t,y);
title('Task 6.3');
hold off;

% Task 7

r = input("Input r=");
figure;
title('Task 7.1');
[x,y]=meshgrid(-r:0.2:r);
z = sqrt(r.^2-x.^2-y.^2);
surf(x,y,real(z));
hold on;
surf(x,y,-real(z));
hold off;

a = input("Input a=");
b = input("Input b=");
c = input("Input c=");
figure;
title('Task 7.2');
z=sqrt(c.^2*(x.^2/(a.^2)+y.^2/(b.^2)-1));
surf(x,y,real(z))
hold on;
surf(x,y,-real(z))
hold off;

figure;
title('Task 7.3');
z=sqrt(c.^2*(x.^2/(a.^2)-y.^2/(b.^2)-1));
surf(x,y,real(z))
hold on;
surf(x,y,-real(z))
hold off;
