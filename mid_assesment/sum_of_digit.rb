def sum_of_digits(number)
  sum = 0
  while number > 0
    sum += number % 10
    number /= 10
  end
  sum
end

puts "Enter a number:"
user_input = gets.chomp.to_i

result = sum_of_digits(user_input)
puts "Sum of digits: #{result}"

