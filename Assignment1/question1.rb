#1. Write a program to display number is prime or not



#function to check number is prime or not
def is_prime(num)
  return false if (num < 2)
  
  #loop from 2 to num-1
  (2..(num - 1)).each do |n|
  #if any number completely deived num then it is not prime number
    return false if num % n == 0
  end

  true
end

#checking with input
is_prime(3)
