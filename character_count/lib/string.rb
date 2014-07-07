class String

  def character_count
    total_count = self.length
    puts 'Uppercase count is: ' + (uppercase = self.scan(/[A-Z]/).length).to_s
    puts 'Lowercase count is: ' + (lowercase = self.scan(/[a-z]/).length).to_s
    puts 'Digit count is: ' + (digit = self.scan(/[0-9]/).length).to_s
    puts 'Special Character count is: ' + (special_char = total_count - (uppercase + lowercase + digit)).to_s
  end

end