class Fixnum
  def factorial
    num = 1
    zero? ? 1 : (1..self).inject{ |num, x| num * x }
  end
end