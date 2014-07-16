class Array

  def swap_content
    var = 0
    while var < (length - 1)
      self[var], self[var + 1] = self[var + 1], self[var]
      var += 2
    end
    self
  end

end
