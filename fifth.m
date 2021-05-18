A = [1 2 3 4; 2 2 1 1; 2 4 6 8; 4 4 2 2];
res = null(A)

A = [2 -9 3 -2 6; 10 -2 -7 4 0; 8 4 6 -6 9; -5 -6 -6 2 3];
b = [-2.9 2.7 4.5 1.9]';
X0 = A\b
X = null(A)
X0 = sym(A)\sym(b)
X = null(sym(A))
% A*(X0)-b
% A*(X0+X)-b
% ....

A = [16 2 3 13; 5 11 10 8; 9 4 6 2; 4 14 15 2];
b = [1 3 4 8];
rank(A)
rank([A b'])
% 有解，rank A = rank C

% 设为 x1...x6 
%   x1  x2  x3  x4  x5  x6
%Al 2   0   0   -1  0   0
%S  3   0   0   0   0   -1
%O  12  3   1   -3  -2  -4
%Na 0   2   0   0   0   -2
%C  0   1   0   0   -1  0
%H  0   0   2   -3  0   0

A = [2 0 0 -1 0 0;3 0 0 0 0 -1;12 3 1 -3 -2 -4;0 2 0 0 0 -2;0 1 0 0 -1 0;0 0 2 -3 0 0];
X = null(sym(A))*3