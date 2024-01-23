#Develop a program to find the largest element in an array.
puts "Enter the elements of the array separated by spaces:"
user_input = gets.chomp
arr = user_input.split(" ").map { |element| element.to_i }

count=0
large=0
large=arr[0]
while(count<arr.size)
	if(large<arr[count])
		large=arr[count]
	end
	count+=1
end
puts "Largest element is : #{large}"
