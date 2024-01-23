require 'singleton'
class NotSingleton
	def initialize
	    puts 'This will be printed many times'
	end
end
class MySingleton
  include Singleton

  attr_accessor :value

  def initialize
    @value = nil
  end
end

#printed many times class not include singleton
NotSingleton.new
NotSingleton.new

# Creating instances of the singleton
singleton_instance_1 = MySingleton.instance
singleton_instance_2 = MySingleton.instance

# Setting a value for the singleton instance
singleton_instance_1.value = 42

# Accessing the value from the other instance
puts "Value from instance 2: #{singleton_instance_2.value}"

