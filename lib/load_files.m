function csv = load_files()
  csv.training_data = csvread("csv/training_data.csv");
  csv.training_labels = csvread("csv/training_labels.csv");
end
