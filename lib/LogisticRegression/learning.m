function Theta = learning(Theta, X, Y, learning_rate)

  Theta -= learning_rate * cost(Theta, X, Y); ### nonconformant arguments (op1 is 3x1, op2 is 5000x15000)

end

function Gradient = cost(Theta, X, Y)

  Gradient = [];
  feature_count = size(X)(1);

  for i = 1:feature_count
    adding_gradient = X(i,:)' * (Theta' * X - Y);
    size(Gradient)
    Gradient = [Gradient, adding_gradient]; ####### WIP --- Gradient 5000x15000 -> 3x1 --- This Mini-Batch Learning didn't working at all
    size(Gradient)
  end

end
