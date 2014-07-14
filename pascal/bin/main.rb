require_relative '../lib/pascal_triangle.rb'

print 'Enter the no. of rows: '
input = gets.chomp.to_i
PascalTriangle.generate(input) { |character| print character }