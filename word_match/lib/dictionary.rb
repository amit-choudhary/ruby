class Dictionary
  @@dictionary = []

  def initialize(*str)
    @@dictionary << str
  end

  def match(word)
    regex = /#{ word }/i
    result = @@dictionary.flatten.select { |str| str=~ regex }
  end

end
