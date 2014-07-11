class String

  def character_count
    lowercase_range = Range.new('a', 'z')
    uppercase_range = Range.new('A', 'Z')
    digit_range = Range.new('0', '9')
    case_hash = Hash.new(0)
    each_char do |char|
      if lowercase_range.include? char
        case_hash[:lowercase] += 1
      elsif uppercase_range.include? char
        case_hash[:uppercase] += 1
      elsif digit_range.include? char
        case_hash[:digit] += 1
      else
        case_hash[:special_char] += 1
      end
    end
    case_hash
  end

end