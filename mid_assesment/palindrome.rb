#Implement a program to check if a given string is a palindrome or not.


def is_palindrome?(str)
  # Remove spaces and convert to lowercase for case-insensitive comparison
  clean_str = str.downcase.gsub(/\s+/, '')
  clean_str == clean_str.reverse
end

# Get input from the user
print "Enter a string: "
user_input = gets.chomp

# Check if the input is a palindrome
if is_palindrome?(user_input)
  puts "#{user_input} is a palindrome."
else
  puts "#{user_input} is not a palindrome."
end

