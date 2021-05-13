% ----------------------------------------------------------------
%                    Initialization of prameters
% ----------------------------------------------------------------
a = -5;
b = 5;
N = [2 4 8 16];
M = 500;
Y = linspace(a, b, M+1);
% ----------------------------------------------------------------
%     Computing max computational errors for n = 2, 4, 8, 16
% ----------------------------------------------------------------
Err = zeros(length(Y),1);
for i=1:length(N)
  pn = Lagrange(a, b, N(i), @f2);
  for j=1:length(Y)
    Err(j) = abs(f2(Y(j))-pn(j));
  endfor
  printf('Maximum error for n = %d is: %.4e \n', N(i), max(Err));
endfor
% ----------------------------------------------------------------
%          Functon calling and plots for n = 2, 4, 8, 16
% ----------------------------------------------------------------
for i=1:length(N)
  X = linspace(a,b, N(i)+1);
  pn = Lagrange(a, b, N(i), @f2);
  figure
  hold on
  title('Line Plot of f_{3}(x)=1/(1+x^2) and Lagrange polynomial Between -5 and 5')
  xlabel('-5 < x < 5') 
  ylabel('f3 values')
  plot(Y, f2(Y))
  plot(Y, pn)
  plot(X, f2(X), 'o')
  legend({'f3(x)=1/(1+x^2)', 'Lagrange polynomial', 'Interpolation points'}, 'Location', 'south');
endfor