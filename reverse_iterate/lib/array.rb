class Array

  def reverse_iterate
    max_index_of_array = size - 1
    while max_index_of_array > -1
      yield self[max_index_of_array]
      length_of_array -= 1 
    end
  end

end