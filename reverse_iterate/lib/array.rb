class Array

  def reverse_iterate
    length = size - 1
    while length > -1
    yield self[length]
    length -= 1 
    end
  end

end