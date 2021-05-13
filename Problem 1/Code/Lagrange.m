function pn=Lagrange(a, b, n, f)
  M = 500;
  Y = linspace(a, b, M+1);
  L = zeros(n+1, M); % matrix of li(yk)

  for k=1:length(Y) % in range(len(Y)):
    L(:,k) = li(Y(k), a, b, n);
  endfor
  % -------------------------------------------------------
  %           f(X) = [f(x0), f(x1), ..., f(xn)]
  % -------------------------------------------------------
  X = linspace(a,b, n+1);
  FX = zeros(1, n+1);
  for i=1:n+1
    FX(i) = f(X(i));
  endfor
  % -------------------------------------------------------
  %                pn(yk) = sum f(xi)*li(yk)
  % -------------------------------------------------------
  pn = zeros(M+1,1);
  for k=1:M+1
    pn(k) = dot(FX, L(:,k));
  endfor
endfunction