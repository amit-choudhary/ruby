class PascalTriangle

  def self.generate(rows)
    1.upto(rows) do |i|
      number = 1
      1.upto(i) do |j|
        yield number
        yield ' '
        number = number * (i - j) / j
      end
      yield "\n"
    end
  end

end