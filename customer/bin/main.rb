require_relative '../lib/customer'

first_customer = Customer.new('Amit')
puts first_customer
puts 'Depositing Rs.100'
first_customer.deposit(100)
puts "Balance : #{ first_customer.balance }"
puts 'Withdrawing Rs.200'
first_customer.withdraw(1200)
puts "Balance : #{ first_customer.balance }"
second_customer = Customer.new('Nitin')
puts second_customer
