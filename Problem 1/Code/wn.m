%;
function w = wn(x, n)
  X = linspace(-1, 1, n+1);
  M = 500;
  Y = linspace(-1, 1, M+1);
  w = 1;
  for k=1:n+1
    w = w*(x-X(k));
  endfor
endfunction