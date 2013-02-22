def greatest_common_denominator
  puts STDIN.gets.split(' ').inject{|x,y| x.to_i.gcd(y.to_i)}
end
