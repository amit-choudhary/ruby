class Item
  attr_accessor :price, :name
  
  def initialize(name, imported, exempted, price)
  	@name = name
  	@imported = imported
  	@exempted = exempted
  	@price = price
  end

  def import_duty
  	@imported == 'y' ?  0.05 * @price : 0
  end

  def sales_tax
  	@exempted == 'n' ? 0.1 * @price : 0
  end

end