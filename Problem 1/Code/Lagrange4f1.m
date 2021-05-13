% ----------------------------------------------------------------
%                    Initialization of prameters
% ----------------------------------------------------------------
a = -1;
b = 1;
N = [2 4 8 16];
M = 500;
Y = linspace(a, b, M+1);
% ----------------------------------------------------------------
%     Computing max computational errors for n = 2, 4, 8, 16
% ----------------------------------------------------------------
Err = zeros(length(Y),1);
for i=1:length(N)
  pn = Lagrange(a, b, N(i), @f1);
  for j=1:length(Y)
    Err(j) = abs(f1(Y(j))-pn(j));
  endfor
  printf('Maximum error for n = %d is: %.4e \n', N(i), max(Err));
endfor

% ----------------------------------------------------------------
%          Functon calling and plots for n = 2, 4, 8, 16
% ----------------------------------------------------------------
for i=1:length(N)
  X = linspace(a,b, N(i)+1);
  pn = Lagrange(a, b, N(i), @f1);
  figure
  hold on
  title('Line Plot of f_{1}(x)=sin(\pi x) and Lagrange polynomial Between -1 and 1')
  xlabel('-1 < x < 1') 
  ylabel('f1 values')
  plot(Y, f1(Y))
  plot(Y, pn)
  plot(X, f1(X), 'o')

  legend({'f1(x)=sin(pi*x)', 'Lagrange polynomial', 'Interpolation points'}, 'Location', 'southeast');
endfor