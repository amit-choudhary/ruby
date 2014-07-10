require_relative '../lib/item'

class Sales

  def initialize
    @sales = []
  end

  def add
    flag = true
    while test
      print 'Name of the product: '
      name = gets.chomp
      print 'Imported?(y for yes) : '
      imported = gets.chomp
      print 'Exempted from sales tax?(y for yes) '
      exempt = gets.chomp
      print 'Price: '
      price = gets.chomp.to_i
      item = Item.new(name, imported, exempt, price)
      @sales.push(item)
      print 'Do you want to add more items to your list(y/n): '
      input_str = gets.chomp
      input_str == 'y' ? flag = true : flag = false
    end
  end

  def generate_bill
    @sales_tax, @import_duty, @total_price, @total_amount = 0, 0, 0, 0
    @sales.each do |item|
      @sales_tax += item.sales_tax
      @import_duty += item.import_duty
      @total_price += item.price
      puts "Item Name: #{item.name} Price: #{item.price}  Sales Tax: #{item.sales_tax} Import Duty: #{item.import_duty}"
    end
    print "Grand Total :"
    (@total_amount = @sales_tax + @import_duty + @total_price).round
  end

end