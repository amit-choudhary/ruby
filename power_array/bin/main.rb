require_relative '../lib/array.rb'

puts 'Enter the size of the array: '
size = (gets.chomp.to_i - 1)
puts 'Enter the array elements: '
array = Array.new(size)

for i in (0..size)
  array[i] = gets.chomp.to_i
end

p array
power_array = array.power(3)
p power_array