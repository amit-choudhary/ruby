require_relative '../lib/sales'

sales = Sales.new
sales.add
puts sales.generate_bill