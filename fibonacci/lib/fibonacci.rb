class Fibonacci

  def series_upto( limit )
    num1, num2 = 0, 1

    while num1 < limit
      yield num1
      num1, num2 = num2, num1 + num2
    end

  end

end
