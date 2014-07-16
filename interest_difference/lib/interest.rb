class Interest
  attr_accessor :principal, :time, :rate

  def initialize
    rate = 10
    yield self if block_given?
  end
  
  def simple_amount
    principal + principal * time * rate / 100
  end

  def compound_amount
    principal * ((1 + rate / 100.to_f) ** time)
  end

  def diff_in_amount
    compound_amount - simple_amount
  end

end