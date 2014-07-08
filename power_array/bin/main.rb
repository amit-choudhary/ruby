require_relative '../lib/array.rb'

puts 'Enter the size of the array: '
size = (gets.chomp.to_i - 1)
puts 'Enter the array elements: '
array = Array.new(size)

for i in (0..size)
  array[i] = gets.chomp.to_i
end

print array
print "\n"
power_array = array.power(3)
print power_array