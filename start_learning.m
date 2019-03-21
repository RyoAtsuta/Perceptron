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
true_positive_count = 0;
false_positive_count = 0;
true_negative_count = 0;
false_negative_count = 0;

for i = 1:m
  positive = hypothesis(-10 + (Theta' * csv.training_data(:, i))) >= 0.5;

  if positive == 1 && positive == csv.training_labels(i)
    correct++;
    true_positive_count++;
  elseif positive == 1 && positive != csv.training_labels(i)
    incorrect++;
    false_positive_count++;
  elseif positive == 0 && positive == csv.training_labels(i)
    correct++;
    true_negative_count++;
  elseif positive == 0 && positive != csv.training_labels(i)
    incorrect++;
    false_negative_count++;
  end
end

accuracy = (correct / (correct + incorrect)) * 100;
precision = true_positive_count / (true_positive_count + false_positive_count + 0.0000001);
recall = true_positive_count / (true_positive_count + false_negative_count + 0.0000001);
fscore = 2 * (precision * recall) / (precision + recall + 0.0000001);

disp("Accuracy: ");
disp(accuracy);
disp("Precision: ");
disp(precision);
disp("Recall: ");
disp(recall);
disp("F-Score: ");
disp(fscore);

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
