% Task 1
for i=1:7
    x(i)=input("Input x%d",i);
end
y=174.42*(x(1)/x(5))*(x(3)/x(2)-x(1))^0.85*sqrt((1-2.62*(1-0.36*(x(4)/x(2))^(3/2)*(x(4)/x(2))^1.16)/(x(6)*x(7)))

% Task 2
% N/A
% Task 3
% N/A
% Task 4
n=input("Input n here:");
fprintf("The result of sum from 1 to n is %d\n",sum([1:n]));
fprintf("The result of prod from 1 to n is %d\n",prod([1:n]));
% Task 5
% - linspace 生成一个数组，从第一个元素开始，到第二个元素结束，均分为第三个元素份。
z=linspace(0,2*pi,9)
% Task 6
% N/A
% Task 7
format short g;
a=input("Input a here:");
round(a*100)/100