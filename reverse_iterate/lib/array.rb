class Array

  def reverse_iterate
    str = join(' ')
    str = str.reverse
    yield str
  end

end