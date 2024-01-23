class University
  def initialize(university_name, university_city)
    @university_name = university_name
    @university_city = university_city
  end
  
#Overidding detail method
  def detail
    puts "\nUniversity Details: "
    puts "University name: #{@university_name}"
    puts "University City: #{@university_city}"
  end

  def finalExams
    puts "Final Exam will be conducted in Sem(5 month)"
  end
end



class College < University
  def initialize(clg_name, clg_city, university_name, university_city)
  #super() is called to call College Parameterized Constructor
    super(university_name, university_city)
    @clg_name = clg_name
    @clg_city = clg_city
  end

#Overidding detail method
  def detail
 #super call to call detail method of University
    super
    puts "\nCollege Details: "
    puts "College name: #{@clg_name}"
    puts "College City: #{@clg_city}"
  end

  def schedule
    puts "College Schedule is from 11-5"
    puts "Each Lecture will be of 45 minutes"
  end

  def internalExams
    puts "Internal Exam will be conducted in each month"
  end
end



class Student < College
  def initialize(name, age, degree, percentage, clg_name, clg_city, university_name, university_city)
  #super() is called to call College Parameterized Constructor
    super(clg_name, clg_city, university_name, university_city)
    @name = name
    @age = age
    @degree = degree
    @percentage = percentage
  end

#Overidding detail method
  def detail
  
 #super call to call detail method of University
    super
    puts "\nStudent Details: "
    puts "name : #{@name}"
    puts "age : #{@age}"
    puts "degree :#{@degree}"
    puts "percentage :#{@percentage}"
  end
end



#getting student details
puts "Enter the following Detail of Student :"
puts "name: "
name = gets.chomp
puts "age: "
age = gets.chomp.to_i
puts "degree: "
degree = gets.chomp  # Fix the typo here
puts "Percentage: "
percent = gets.chomp.to_i
puts "College name: "
clg_name = gets.chomp
puts "College City: "
clg_city = gets.chomp
puts "University name: "
univ_name = gets.chomp
puts "University City: "
univ_city = gets.chomp

#Overide method is called resolved using super
stud = Student.new(name, age, degree, percent, clg_name, clg_city, univ_name, univ_city)  # Fix the class name here
puts "\nGet the detail of Student: "
stud.detail

#inhertited superclass College method
puts "\nGet College Schedule and Exam information"
stud.schedule
stud.internalExams


#inhertited superclass University method
puts "\nGet University Exam information"
stud.finalExams
