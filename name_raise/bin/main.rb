require_relative '../lib/name'

begin
  print 'Enter First name: '
  firstname = gets.chomp.strip
  print 'Enter Last name: '
  lastname = gets.chomp.strip
  Name.new(firstname, lastname)
rescue BlankArgument
  puts 'Blank Argument. Please Enter again'
  retry
rescue FirstnameError
  puts 'First alphabet of first name is not capital. Please Enter again'
  retry
end
