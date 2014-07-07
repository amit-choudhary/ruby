class Pascal

  def pascal_triangle_upto(limit)
    1.upto(limit) do |i|
      c = 1
      1.upto(i) do |j|
        print "#{c} "
        c = c * (i - j) / j
      end
      yield
    end
  end

end