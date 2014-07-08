class String

  def reverse_sentence
    temp_array = split(' ')
    temp_array = temp_array.reverse
    temp_array.join(" ")
  end

end