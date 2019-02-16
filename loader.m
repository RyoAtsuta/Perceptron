addpath("lib");
addpath("lib/LogisticRegression");

sample_number = 5000;
feature_count = 3;
Theta = random_initialize(3, 1, 1);

generate_training_data(sample_number, feature_count, @generator);
csv = load_files();


