def add_item
end

def generate_matrix_row
end

def fill_knapsack
  #Get the amount of rows that will be inputted
  rows = STDIN.gets.chomp
  for i in (1..rows)
    value = STDIN.gets.to_i
    if (is_refresh?(value))
      calculate_knapsack(value, weight, max_weight)
    else
      generate_matrix_row(value, weight, max_weight)
    end
  end
end


fill_knapsack
