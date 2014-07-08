class Pascal

  def self.generate(limit)
    1.upto(limit) do |i|
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