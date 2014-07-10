require_relative '../lib/string.rb'

print 'Enter the input string: '
input_str = gets.chomp
print 'Enter the text to be highlighted: '
highlight_text = gets.chomp
puts input_str.highlight_search(highlight_text)