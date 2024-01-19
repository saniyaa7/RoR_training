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

#6.



