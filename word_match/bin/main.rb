require_relative '../lib/dictionary'

dictionary = Dictionary.new('Testingg123', 'testing23542', 'asdtest', 'sazwqa')
print 'Enter the word to be matched: '
word = gets.chomp.strip
print dictionary.match(word)
