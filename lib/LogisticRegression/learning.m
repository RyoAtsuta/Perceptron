function Theta = learning(Theta, X, Y, learning_rate)

  Theta -= learning_rate * cost(Theta, X, Y);

end

function Gradient = cost(Theta, X, Y)
  
  bias = -10;
  Z = bias + (Theta' * X);
  Gradient = X * (hypothesis(Z) - Y);

end
