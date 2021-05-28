function [k,b] = linear(x,y)
    for i = 2:length(x)
        k(i-1) = (y(i)-y(i-1))/(x(i)-x(i-1));
        b(i-1) = y(i-1);
    end
end

