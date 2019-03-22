function data = generator(feature_count)
  range = 10;
  specific_number = 7;
  data.training_data = [];

  rand_val = rand(1);

  if rand_val > 0
    data.training_data = round(random_initialize(feature_count, 1, range));
  else
    for i = 1:feature_count
      data.training_data = [data.training_data; specific_number];
    end
  end

  all_true = 0;
  true_count = 0;
  for i = 1:feature_count
    number = data.training_data(i);
    if number >= specific_number
      true_count++;
    end
  end

  if true_count == feature_count
    all_true = 1;
  end

  data.training_label = all_true;
end
