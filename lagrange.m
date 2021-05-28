function lag = lagrange(x0, y0, x)
  n = length(x0);
  m = length(x);
  for i = 1:m 
      lag(i) = 0;
      for k = 1:n
          p = 1;
          for j = [1:k-1 k+1:n]
              p = p*(x(i)-x0(j))/(x0(k)-x0(j));
          end
          lag(i) = lag(i)+y0(k)*p;
      end
  end