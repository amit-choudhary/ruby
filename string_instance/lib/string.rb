class String

  def doublex?
    first_index = index('x')
    first_index.nil? ? false : self[first_index] == self[first_index + 1]
  end

end
