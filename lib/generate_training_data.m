function result_code = generate_training_data(sample_number, feature_count, callback)
  training_data = [];
  training_labels = [];

  for i = 1:sample_number
    adding_result = callback(feature_count);
    training_data = [training_data, adding_result.training_data];
    training_labels = [training_labels, adding_result.training_label];
  end

  csvwrite("csv/training_data.csv", training_data);
  csvwrite("csv/training_labels.csv", training_labels);
  result_code = 0;
end
