addpath("lib");
addpath("lib/LogisticRegression");

feature_count = input("How many feature: ");
Theta = random_initialize(feature_count, 1, 1);
yes = input("Do you want to generate new training example: ");

if yes == 1
  sample_number = input("How many training example: ");
  generate_training_data(sample_number, feature_count, @generator);
end

csv = load_files();


