function data = generator(feature_count)
  range = 5;
  data.training_data = round(random_initialize(feature_count, 1, range));

  all_true = 0;
  true_count = 0;
  for i = 1:feature_count
    number = data.training_data(i);
    if number == 3
      true_count++;
    end
  end

  if true_count == feature_count
    all_true = 1;
  end

  data.training_label = all_true;
end
