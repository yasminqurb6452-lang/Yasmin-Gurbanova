green = [125 223 100]/255;
tan = [222 185 134]/255;
rose = [219 108 121]/255;
pink = [237 77 110]/255;
purple = [118 82 139]/255;

x = linspace(0,4,81);

f1 = x;
f2 = x.^2;
f3 = x.^3;

figure

plot(x,f1,'Color',green)
hold on
plot(x,f2,'Color',rose)
plot(x,f3,'Color',pink)
hold off

xlabel('x')
ylabel('f1(x) = x; f2(x) = x^2; f3(x) = x^3')
title('Graphs of the Functions','Color',rose)
legend('f1(x) = x','f2(x) = x^2','f3(x) = x^3')
grid on


x = linspace(0,10*pi,500);

y = sin(x).*cos(x);
z = cos(x);

figure

subplot(2,1,1)

plot3(x,y,z,'Color',rose)

xlabel('x')
ylabel('y')
zlabel('z')
title('3D Plot','Color',rose)
grid on

xlim([0 10*pi])
ylim([-0.5 0.5])
zlim([-1 1])

subplot(2,1,2)

polarplot(x,y,'Color',green)
title('Polar Plot','Color',rose)


A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

t = 0:0.001:1.5;

s = A.*sin(2*pi*f*t) + 0.5*A.*cos(4*pi*f*t);
n = sigma.*randn(size(t));
x = s + n;

filtered = x;
filtered(abs(filtered) < U2) = 0;

figure

subplot(1,2,1)

plot(t,x,'--','Color',rose,'LineWidth',1.5)
hold on
plot(t,filtered,':','Color',green,'LineWidth',1.5)
yline(U1,'-','Color',purple)
yline(U2,'--','Color',tan)
hold off

xlabel('Time (s)')
ylabel('Voltage')
title({'Original and';'Filtered Signals'}, ...
    'Color',purple,'FontSize',16)
legend('Original','Filtered','U1','U2')
grid on


subplot(1,2,2)

selected = x > U1;

stem(t(selected),x(selected), ...
    'Color',rose,'Marker','none')

hold on

[maxValue,maxIndex] = max(x);
[minValue,minIndex] = min(x);

plot(t(maxIndex),maxValue,'c*','MarkerSize',12)
plot(t(minIndex),minValue,'*','Color',pink,'MarkerSize',12)

hold off

xlabel('Time (s)')
ylabel('Voltage')
title({'Signal Values';'Exceeding U1'}, ...
    'Color',purple,'FontSize',16)
legend('Values exceeding U1','Maximum','Minimum')
grid on