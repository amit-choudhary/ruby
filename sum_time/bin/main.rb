require_relative '../lib/time.rb'
require 'date'

print 'Enter First time: '
first_time = gets.chomp
print 'Enter Second_time: '
second_time = gets.chomp
print Time.sum(first_time, second_time)