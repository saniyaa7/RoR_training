# 4. Regex for mobile number, email address, name, gender(M / F) and amount

str = "Hello, I am Saniya. My phone no. is 8237939131, my age is 20, and my salary is Rs.10000. Email - saniyachaudhari07@gmail.com, gender - F"

number = str.match(/\d{10}/)&.to_s        
amount = str.match(/Rs\.(\d+)/)&.captures&.first  
email = str.match(/\b\w+@\w+\.\w+\b/)&.to_s       
gender = str.match(/[MFmf]/)&.to_s       

puts "Mobile Number: #{number}" if number
puts "Amount: Rs.#{amount}" if amount
puts "Email: #{email}" if email
puts "Gender: #{gender}" if gender

