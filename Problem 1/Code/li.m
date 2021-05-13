function l=li(x, a, b, n) % returns a vector [l0(x), l1(x), l2(x), ..., ln(x)]
  X = linspace(a,b, n+1);
  l = zeros(n+1,1);
  for i=1:n+1
    prod = 1;
    for j=1:n+1
      if j~=i
        prod = prod*(x - X(j))/(X(i) - X(j));
       endif
     endfor
    l(i) = prod;
   endfor
end