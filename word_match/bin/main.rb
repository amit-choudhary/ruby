require_relative '../lib/array'

puts 'Enter the size of the array: '
size = gets.chomp.to_i
puts 'Enter the array elements: '
input_array = Array.new

size.times do |index|
  input_array.push(gets.chomp)
end

print 'Enter the word to be matched: '
word = gets.chomp.strip
print input_array
print "\n"
print input_array.match(word)
