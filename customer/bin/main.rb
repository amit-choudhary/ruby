require_relative '../lib/customer.rb'

first_customer = Customer.new("Amit")
puts first_customer
puts "Depositing Rs.100"
first_customer.deposit(100)
puts "Balance : #{ first_customer.balance }"
puts "Withdrawing Rs.200"
first_customer.withdraw(1200)
puts "Balance : #{ first_customer.balance }"
second_customer = Customer.new("Nitin", 2000)
puts second_customer
