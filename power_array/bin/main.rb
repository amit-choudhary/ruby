require_relative '../lib/array.rb'

puts 'Enter the size of the array: '
size = gets.chomp.to_i
puts 'Enter the array elements: '
input_array = Array.new
size.times do |index|
  input_array.push (gets.chomp.to_i)
end
print input_array
print "\n"
print input_array.power(3)