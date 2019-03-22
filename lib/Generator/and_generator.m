function data = generator(feature_count)
  range = 100;
  add_number = 1;
  data.training_data = [];

  rand_val1 = rand(1);
  rand_val2 = rand(1);

  if rand_val1 > 0.5
    data.training_data = round(random_initialize(feature_count, 1, range)) > 0;
  else
    if rand_val2 > 0.5
      for i = 1:feature_count
        data.training_data = [data.training_data; add_number];
      end
    else
      rand_index = round(rand(1) * (feature_count-1)) + 1;
      data.training_data = ones(feature_count, 1);
      data.training_data(rand_index) = 0;
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
