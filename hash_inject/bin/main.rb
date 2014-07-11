require_relative '../lib/array.rb'

puts 'Enter the size of the array: '
size = gets.chomp.to_i
puts 'Enter the array elements: '
input_array = Array.new()

size.times do |index|
	input_array.push(gets.chomp)
end

puts "#{input_array}"
puts "#{input_array.group_on_odd_even}"