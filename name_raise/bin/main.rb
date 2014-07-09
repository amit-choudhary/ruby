require_relative '../lib/name.rb'

begin
  print "Enter First name: "
  firstname = gets.chomp
  print "Enter Last name: "
  lastname = gets.chomp
  Name.new(firstname, lastname)
rescue BlankArgument
  puts 'Wrong format. Please Enter again'
  retry
end