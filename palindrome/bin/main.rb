require_relative '../lib/string.rb'

loop do
  print 'Enter the string: '
  input_str = gets.chomp
  if input_str =~ /^[q]$/i
    exit
  end
  puts input_str.palindrome?
end