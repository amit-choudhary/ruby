require_relative '../lib/name'

begin
  print 'Enter First name: '
  firstname = gets.chomp.strip
  print 'Enter Last name: '
  lastname = gets.chomp.strip
  Name.new(firstname, lastname)
rescue BlankArgument => e
  puts e
  retry
rescue FirstnameError => e
  puts e
  retry
end
