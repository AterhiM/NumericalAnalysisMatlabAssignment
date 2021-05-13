%;
function Igauss = Gauss3points(N)
  w = [5/9 8/9 5/9];
  Igauss = 0;

  for i=1:N
    d = (i-1)/N;
    x = [d+(1-sqrt(3/5))/(2*N), d+1/(2*N), d+(1+sqrt(3/5))/(2*N)];
    Igauss = Igauss + (1/N)*(g(x(1))*w(1) + g(x(2))*w(2) + g(x(3))*w(3));
  endfor
endfunction