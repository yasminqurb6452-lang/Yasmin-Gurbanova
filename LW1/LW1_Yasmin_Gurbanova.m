x = 1:38;
y = x.^2;

plot(x, y, 'r-', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-axis')
ylabel('F_1 [o-o]    |    F_2 [x-x]')

N = 9;

v = N+1:0.5:N+4;

A = [N N+1 N+2;
     N+3 N+4 N+5;
     N+6 N+7 N+8];

a = A(3,2);

b = A(2:3,1:2);

c = A([1 3],[1 3]);

v_modified = reshape(v(1:6), 3, 2);

B = [A v_modified];