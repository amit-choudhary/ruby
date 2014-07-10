class Interest
  attr_accessor :principal, :time, :rate

  def initialize
    yield self
  end
  
  def simple_amount
    @principal + @principal * @time * @rate / 100
  end

  def compund_amount
    @principal * ((1 + @rate / 100.to_f) ** @time)
  end

  def diff_in_amount
    compund_amount - simple_amount
  end

end