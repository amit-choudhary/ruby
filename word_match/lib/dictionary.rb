class Dictionary
  @dictionary = []
  class << self
    attr_accessor :dictionary
  end

  def initialize(*str)
    self.class.dictionary << str
  end

  def match(word)
    regex = /#{ word }/i
    result = self.class.dictionary.flatten.select { |str| str=~ regex }
  end

end
