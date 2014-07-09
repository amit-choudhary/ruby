require_relative '../lib/fixnum.rb'

begin
print 'Enter the input number: '
input_num = gets.chomp.to_i
if input_num < 0
  raise ArgumentError
else
puts input_num.factorial
end

rescue ArgumentError
  puts "Bad Argument"
  retry
end

