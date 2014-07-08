class Vehicle
  attr_reader :name
  attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "Name: #{ name }, Price: #{ price }"
  end

end

class Bike < Vehicle
  attr_accessor :dealer

  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def to_s
    "Name: #{ name }, Price: #{ price }, Dealer: #{ dealer }"
  end

end