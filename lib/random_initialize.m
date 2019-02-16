function val = random_initialize(row, col, range)
  val = (rand(row, col) * 2 * range) - range;
end
