require_relative 'country_data'

module CountryInput
  def self.get_country_name
    puts "Enter Country Name"
    input_country_name = gets.chomp.downcase
    return input_country_name
  end
end

# Module to find Country name in Data
module CountryFinder
  def self.find_country_info
    country_name = CountryInput.get_country_name
    found_country = Data::Country.find { |country| country[:name].downcase == country_name }
    if found_country
      return found_country
    else
      puts "Country Not Found in our Database"
    end
  end
end

# Module to find Country is eligible for Loan or not
module LoanEligibility
  def self.check_eligibility_for_loan
    country_info = CountryFinder.find_country_info
    if country_info && country_info[:gdp] > 4_000_000_000
      puts "Eligible for loan"
    else
      puts "Not Eligible for loan"
    end
  end
end

# Module to find Country is eligible for UN Seats or not
module UNSeatsEligibility
  def self.check_eligibility_for_seats
    country_info = CountryFinder.find_country_info
    if country_info && country_info[:state_of_country] == "developed"
      puts "Eligible for UN Seats"
    else
      puts "Not Eligible for UN Seats"
    end
  end
end

# Module to find Country can win War or not
module WarOutcomePrediction
  def self.predict_war_outcome
    country_info = CountryFinder.find_country_info
    if country_info && country_info[:army_strength] > 7
      puts "High chance of winning in a war"
    else
      puts "Low chance of winning in a war"
    end
  end
end

loop do
  puts "\n_________________________________________\n"
  
  puts "CLI Application"
  
  puts "1. Check if a country will get a loan from the IMF"
  puts "2. Check if a country can have a seat in the UN Security Council."
  puts "3. Prediction for war"
  puts "4. Exit\n"
  puts "_________________________________________\n"
  
  puts "Available Country data[USA, India, China, Germany, Brazil, Australia]\n"
  puts "Enter Your Choice"
  user_choice = gets.chomp.to_i

  case user_choice
  when 1
    LoanEligibility.check_eligibility_for_loan
  when 2
    UNSeatsEligibility.check_eligibility_for_seats
  when 3
    WarOutcomePrediction.predict_war_outcome
  when 4
    exit
  else
    puts "Invalid choice. Please enter a valid option."
  end
end

