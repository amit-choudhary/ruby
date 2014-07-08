require_relative '../lib/pascal.rb'

print 'Enter the no. of rows: '
input = gets.chomp.to_i
Pascal.generate(input) { |number| print number }