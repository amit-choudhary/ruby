require_relative '../lib/fixnum.rb'
require_relative '../lib/badargument.rb'

begin
  print 'Enter the input number: '
  input_num = gets.chomp.to_i
  if input_num < 0
    raise BadArgument
  else
    puts input_num.factorial
  end
rescue BadArgument
  puts "Bad Argument"
  retry
end