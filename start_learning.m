loader;

learning_rate = input("Learning Rate: ");
iteration = 1;

j_list = [];
iteration_list = [];

m = length(csv.training_labels);

for i = 1:m
  Theta = learning(Theta, csv.training_data(:,i), csv.training_labels(i), learning_rate);
  Theta

  if mod(i, 100) == 0
    j = cost_function(Theta, csv.training_data(:, i), csv.training_labels(i));
    j_list = [j_list, j];
    iteration_list = [iteration_list, iteration];
    iteration++;
  end
end

plot(iteration_list, j_list);

correct = 0;
incorrect = 0;

for i = 1:m
  positive = hypothesis(-10 + (Theta' * csv.training_data(:, i))) >= 0.5;

  if positive == csv.training_labels(i)
    correct++;
  else
    incorrect++;
  end
end

accuracy = (correct / (correct + incorrect)) * 100;

disp("Accuracy: ");
disp(accuracy);

while 1
  input_list = [];
  for i = 1:feature_count
    input_number = input("Enter Number: ");
    input_list = [input_list; input_number];
  end

  answer = hypothesis(-10 + (Theta' * input_list)) >= 0.5;

  if answer == 1
    disp("true");
  else
    disp("false");
  end
end
