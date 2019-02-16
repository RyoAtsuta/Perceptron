function Theta = learning(Theta, X, Y, learning_rate)

  Theta -= learning_rate * cost(Theta, X, Y);
  
end

function Gradient = cost(Theta, X, Y)

  Gradient = X * (Theta' * X - Y);

end
