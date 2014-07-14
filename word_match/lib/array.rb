class Array

  def match(word)
    regex = /#{ word }/i
    result = select { |str| str=~ regex }
  end

end
