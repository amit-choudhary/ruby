require_relative '../lib/string.rb'

print 'Enter the input string: '
input_str = gets.chomp
puts input_str.highlight_search('can')