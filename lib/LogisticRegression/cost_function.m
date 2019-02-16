function J = cost_function(Theta, X, Y)

  m = length(Y);
  J = -1 / m * (log(hypothesis(Theta' * X)) * Y' + log(1 - hypothesis(Theta' * X)) * (1 - Y)');
end
