class String

  def highlight_search(str)
    regex_word = /(#{str})/i
    "#{ self.gsub(regex_word, '(\1)') } \nTotal occurences found: #{ self.scan(regex_word).length }"
  end

end