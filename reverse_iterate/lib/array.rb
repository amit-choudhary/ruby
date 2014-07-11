class Array

  def reverse_iterate
    index_of_array = size - 1
    while index_of_array > -1
      yield self[index_of_array]
      index_of_array -= 1 
    end
  end

end