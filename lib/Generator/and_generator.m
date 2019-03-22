function data = generator(feature_count)
  range = 100;
  add_number = 1;
  data.training_data = [];

  rand_val = rand(1);

  if rand_val > 0.5
    data.training_data = round(random_initialize(feature_count, 1, range)) > 0;
  else
    for i = 1:feature_count
      data.training_data = [data.training_data; add_number];
    end
  end

  all_positive = 0;
  positive_count = 0;
  for i = 1:feature_count
    if data.training_data(i) == 1
      positive_count++;
    end
  end

  if positive_count == feature_count
    all_positive = 1;
  end

  data.training_label = all_positive;
end
