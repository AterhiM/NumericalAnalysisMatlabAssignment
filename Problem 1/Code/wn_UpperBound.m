a = -1;
b = 1;
N = [2 4 8 16];
M = 100;
Y = linspace(a, b, M+1);
W = ones(n+1, 1);

for i=1:length(N)
  for j=1:M+1
    W(j) = wn(Y(j), N(i));
  endfor
  fprintf('The upper bound for n = %d is: %.4e\n', N(i), max(W)./(factorial(N(i)+1)));
  X = linspace(a, b, N(i)+1);
  figure
  hold on
  plot(X, zeros(N(i)+1,1), 'o')
  plot(Y, W, 'r')
endfor
fprintf('-------------------------------------------------------------------------\n');
fprintf('The upper bound and the approximate maximum iterpolation error are close.\n');
