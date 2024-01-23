#Develop a program to sort an array using the bubble sort algorithm.
def custom_bubble_sort(arr)
  size = arr.length

  (0..size - 2).each do |i|
    no_swaps = true

    (0..size - i - 2).each do |j|
      if arr[j] > arr[j + 1]
        tmp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = tmp

        no_swaps = false
      end
    end

    break if no_swaps
  end
end

puts "Enter the length of the array:"
length = gets.chomp.to_i

puts "Enter the elements separated by spaces:"
user_input = gets.chomp
arr = user_input.split.map(&:to_i)

if arr.length != length
  puts "Invalid input. The length of the entered array does not match the specified length."
else
  custom_bubble_sort(arr)
  puts "Sorted array after calling bubble sort: #{arr}"
end

