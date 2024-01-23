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
  def initialize(college_name, college_city, university_name, university_city)
  #super() is called to call College Parameterized Constructor
    super(university_name, university_city)
    @college_name = college_name
    @college_city = college_city
  end

#Overidding detail method
  def detail
 #super call to call detail method of University
    super
    puts "\nCollege Details: "
    puts "College name: #{@college_name}"
    puts "College City: #{@college_city}"
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
  def initialize(name, age, degree, percentage, college_name, college_city, university_name, university_city)
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
college_name = gets.chomp
puts "College City: "
college_city = gets.chomp
puts "University name: "
university_name = gets.chomp
puts "University City: "
university_city = gets.chomp

#Overide method is called resolved using super
student = Student.new(name, age, degree, percent, college_name, college_city, university_name, university_city)  # Fix the class name here
puts "\nGet the detail of Student: "
student.detail

#inhertited superclass College method
puts "\nGet College Schedule and Exam information"
student.schedule
student.internalExams


#inhertited superclass University method
puts "\nGet University Exam information"
student.finalExams
