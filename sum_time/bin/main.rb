require_relative '../lib/time'
require 'date'

begin
  print 'Enter First time: '
  first_time = gets.chomp
  print 'Enter Second_time: '
  second_time = gets.chomp
  print Time.show_total_time(first_time, second_time)
rescue InvalidTimeError
  puts 'Invalid Time. Please Enter again.'
  retry
end
