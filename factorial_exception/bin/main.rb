require_relative '../lib/fixnum'
require_relative '../lib/bad_argument'

begin
  print 'Enter the input number: '
  input_num = gets.chomp.to_i
  if input_num < 0
    raise BadArgument
  else
    puts input_num.factorial
  end
rescue BadArgument
  puts "Bad Argument. Please Enter again"
  retry
end