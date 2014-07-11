class String

  def character_count
    case_hash = Hash.new(0)
    each_char do |char|
      if ('a'..'z').include? char
        case_hash[:lowercase] += 1
      elsif ('A'..'Z').include? char
        case_hash[:uppercase] += 1
      elsif ('0'..'9').include? char
        case_hash[:digit] += 1
      else
        case_hash[:special_char] += 1
      end
    end
    case_hash
  end

end