def find_subset(array)
  return [] if array.empty?

  result = [ [] ]
  array.each do |element|
    new_result = []
    result.each do |result_element|
      result_element = result_element + [ element ]
      new_result << result_element
    end
    result = (result + new_result)
  end
  puts "Result #{result}"
end

find_subset([1,2,3])
