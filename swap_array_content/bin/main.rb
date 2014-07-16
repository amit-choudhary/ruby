require_relative '../lib/array'

input_str = []
loop do
  begin
  print 'Enter the number (q/Q to end): '
  temp_input = gets.chomp
  if temp_input =~ /^[q]$/i
    break
  end
  if Float(temp_input)
  input_str << temp_input.to_i
  end
  rescue ArgumentError
    retry
  end
end

print input_str
print "\n"
print input_str.swap_content
