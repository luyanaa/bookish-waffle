% Task 1 
spiral(10) % 输出若干阶的螺旋矩阵
% Task 2
[1 2;3 4]+10-2i % 矩阵每个元素加 10-2i 
[1 2;3 4].*[0.1 0.2;0.3 0.4] % 矩阵的对应元素相乘 
[1 2;3 4].\[20 10;9 2] % 矩阵对应元素相除
[1 2;3 4].^2 % 矩阵的二次幂
exp([1 2;3 4]) % 对每个元素，返回 e 的若干次幂的值所构成的矩阵
sum([1 2;3 4]) % 返回矩阵每列之和所构成的行向量
prod([1 2;3 4]) % 返回矩阵每列之积所构成的行向量
[a,b] = min([10 20;30 40]) % 返回矩阵每一列的最小值和索引
abs([1 2;3 4]-pi) % 返回对矩阵每个元素减去 pi 后求绝对值的值
linspace(3,4,5) % 以 3 为第一个元素， 4 为最后一个元素，构造一个步长相等的行向量。
A = [1 2;3 4]; sort(A(:,2)) % 取第二列后排序。
% Task 3
% 矩阵由 4 x 4 变为 5 x 6，多余用 0 填充，除了第 5 行第 6 列变为 5 。
% Task 4
n = input('Input number of rows in the martix');
m = input('Input number of columns in the matrix');
for i=1:n
    for j=1:m
        A(i,j) = input('');
    end
end

fprintf("The eigen values of the given matrix\n");
[eigenValue,eigenVector] = eig(A)
pause

% Task 5
n = input('Input number of rows in the martix A\n');
m = input('Input number of columns in the matrix A\n');
for i=1:n
    for j=1:m
        A(i,j) = input('');
    end
end
fprintf("Result of 2^A is: ");
2^A
fprintf("Result of 2^.A is: ");
2.^A
% Task 6
A = magic(6);
fprintf("Row 2 Column 1: ");
c = A(2,1)
B = A(2:2:end,2:2:end)
A([1 6], :)=A([6 1], :);
A(:,2)=[]
% Task 7
zeros(4,5)
rand(3,4)
eye(3)
% Task 8
100.*rand(100,100)
% Task 9
n = input('Input number of rows in the martix');
m = input('Input number of columns in the matrix');
for i=1:n
    for j=1:m
        A(i,j) = input('');
    end
end
A(2,:)=2*A(2,:);
A(1,:)=A-2*A(3,:);

% Task 10
A = [1,3,5;5,8,3;6,1,6];
B = [3,6;9,5;8,2];
C = [3,3,9;4,0,6];
D = [2:6];
[A,B] % (A|B)
[A;C] % A 下接 C
[A,B;D] % (A|B) 下接 D

% Task 11
for i=0:5
    arr(i+1,:)=[2:8]+i;
end
arr
