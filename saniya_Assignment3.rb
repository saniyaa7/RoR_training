#1.Initlize class
class Student
 def initialize(name="Saniya",age=20,degree="B.tech")
   @name=name
   @age=age
 end

 def display
   puts "Hi My name is #{@name} and my age is #{@age} pursuing
 
 end
end

stud=Student.new
stud.display


#2.Instance Method
class Dog
  # Constructor method (initialize)
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Instance method to bark
  def bark
    puts "#{@name} says Woof!"
  end

  # Instance method to fetch age
  def get_age
    puts "#{@name}'s age is #{@age} years."
  end
end


my_dog = Dog.new("Buddy", 3)

# Calling instance methods on the instance
my_dog.bark
my_dog.get_age

#3.Access Specifier
class MyClass
  def public_method
    puts "This is a public method."
  end

  protected

  def protected_method
    puts "This is a protected method."
  end

  private

  def private_method
    puts "This is a private method."
  end
end

a=MyClass.new
a.public_methos
a.protected_method
a.private_method



#4.Getter Method
class MyClass
  def initialize(value)
    @my_variable = value
  end

  def my_variable
    @my_variable
  end
end

my_instance = MyClass.new("Hello")
puts my_instance.my_variable


#5.Setter Method
class MyClass
  def initialize(value)
    @my_variable = value
  end

  def my_variable=(new_value)
    @my_variable = new_value
  end
end

my_instance = MyClass.new("Hello")
my_instance.my_variable = "World"
puts my_instance.my_variable

#Inheritence
class Animal
  def speak
    puts "Animal speaks"
  end
end

class Dog < Animal
  def bark
    puts "Dog barks"
  end
end

class Cat < Animal
  def meow
    puts "Cat meows"
  end
end

dog = Dog.new
dog.speak   # Output: Animal speaks
dog.bark    # Output: Dog barks

cat = Cat.new
cat.speak   # Output: Animal speaks
cat.meow    # Output: Cat meows

#Polymorphism
class Dog
  def speak
    "Woof!"
  end
end

class Cat
  def speak
    "Meow!"
  end
end

class Cow
  def speak
    "Moo!"
  end
end

# A generic function that can take any object with a 'speak' method
def make_speak(animal)
  puts animal.speak
end

# Creating instances of different classes
dog = Dog.new
cat = Cat.new
cow = Cow.new

# Calling the make_speak method with different objects
make_speak(dog)  # Outputs: Woof!
make_speak(cat)  # Outputs: Meow!
make_speak(cow)  # Outputs: Moo!

#encapsulation
# Ruby program to illustrate encapsulation 
#!/usr/bin/ruby 
	
class Demoencapsulation 
		
def initialize(id, name, addr) 
		
# Instance Variables	 
@cust_id = id 
@cust_name = name 
@cust_addr = addr 
end
	
# displaying result 
def display_details() 
puts "Customer id: #@cust_id"
puts "Customer name: #@cust_name"
puts "Customer address: #@cust_addr"
end
end
	
# Create Objects 
cust1 = Demoencapsulation .new("1", "Mike", 
			"Wisdom Apartments, Ludhiya") 

cust2 = Demoencapsulation .new("2", "Jackey", 
				"New Empire road, Khandala") 
	
# Call Methods 
cust1.display_details() 
cust2.display_details() 




