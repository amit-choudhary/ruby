require_relative '../lib/time'
require 'date'

print 'Enter First time: '
first_time = gets.chomp
print 'Enter Second_time: '
second_time = gets.chomp
two_times = Sum.new
print two_times.sum(first_time, second_time)