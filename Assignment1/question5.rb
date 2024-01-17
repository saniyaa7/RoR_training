# Write a program to find IP address class

# Program to take IP address as an input and print the class of IP it belongs to
def find_ip_address_class(ip_address)
  first_octet = ip_address.split('.').first.to_i

  case first_octet
  when 1..126
    'Class A'
  when 128..191
    'Class B'
  when 192..223
    'Class C'
  when 224..239
    'Class D'
  when 240..255
    'Class E'
  else
    'Invalid IP address'
  end
end

# Example usage:
ip_address = '192.168.1.1'
ip_class = find_ip_address_class(ip_address)

puts "IP Address: #{ip_address}"
puts "IP Address Class: #{ip_class}"

