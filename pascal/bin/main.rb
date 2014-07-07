require_relative '../lib/pascal.rb'

print 'Enter the no. of rows: '
input = gets.chomp.to_i
pascal_triangle = Pascal.new
pascal_triangle.pascal_triangle_upto(6) { print "\n" }