def jolly_jumper(list_of_numbers)
  list_of_n  = {}
  for i in 0..list_of_numbers.length-2
    if (list_of_numbers[i] - list_of_numbers[i+1]).abs.between?(0, list_of_numbers.length)
      list_of_n[(list_of_numbers[i] - list_of_numbers[i+1]).abs] = 1 if list_of_n[(list_of_numbers[i] - list_of_numbers[i+1]).abs].nil?
    end
  end
  if list_of_n.keys.inject(:+) == (list_of_numbers.length * (list_of_numbers.length - 1))/2
    return "JOLLY"
  end
  return "NOT JOLLY"
end

#test cases
puts jolly_jumper([1, 4, 2, 3])
puts jolly_jumper([5, 1, 4, 2, -1, 6])

