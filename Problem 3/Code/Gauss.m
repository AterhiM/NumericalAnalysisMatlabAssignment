% -------------------------------------------------------------------
%                         Exact solution
% -------------------------------------------------------------------
ExactInt = 2/pi;

% -------------------------------------------------------------------
%                   Constructing the error vector
% -------------------------------------------------------------------
N = 1:1:8;
Err = zeros(length(N),1);
for i=1:length(N)
  Err(i) = abs(Gauss3points(i) - ExactInt);
endfor
% -------------------------------------------------------------------
%                     Table of observed errors 
% -------------------------------------------------------------------
fprintf("\n||   n   ||     Error      ||\n");
fprintf("-----------------------------\n");
for i=1:length(N)
  fprintf("||   %d   ||   %.4e   ||", N(i), Err(i))
  fprintf("\n");
endfor
fprintf("\nThe 'n' that gives an error less than 10^-7 is n = 2\n");
% -------------------------------------------------------------------
%                        Plotting the error
% -------------------------------------------------------------------
figure
hold on
title('Line Plot of the error observed for n = 1, 2, .., 8')
xlabel('Number of evaluations') 
ylabel('Error')
xticks(N)
yticks(Err)
plot(N, Err, 'r')
scatter(N, Err, 'r')
legend('Error observed');