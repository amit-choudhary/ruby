class Fixnum
  def factorial
    num = 1
    if self == 0
      return 1
    else
      (1..self).inject{ |num, x| num * x }
    end
  end
end