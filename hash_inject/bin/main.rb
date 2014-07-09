require_relative '../lib/array.rb'

puts 'Enter the size of the array: '
size = (gets.chomp.to_i - 1)
puts 'Enter the array elements: '
input_array = Array.new(size)

for i in (0..size)
  input_array[i] = gets.chomp
end

print input_array
print "\n"
print input_array.group_on_odd_even