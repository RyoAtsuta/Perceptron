function data = generator(feature_count)
  range = 100;
  data.training_data = random_initialize(feature_count, 1, range);

  all_positive = 0;
  positive_count = 0;
  for i = 1:feature_count
    if data.training_data(i) >= 0
      positive_count++;
    end
  end

  if positive_count == feature_count
    all_positive = 1;
  end

  data.training_label = all_positive;
end
