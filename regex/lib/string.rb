class String

  Vowel = /[aeiou]/i
  
  def vowel_subs
    self.gsub( Vowel , '*')
  end

end