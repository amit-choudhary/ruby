class String

  def character_count
    case_hash = Hash.new(0)
    each_char do |char|
      if char =~ /[a-z]/
        case_hash[:lowercase] += 1
      elsif char =~ /[A-z]/
        case_hash[:uppaercase] += 1
      elsif char =~ /[0-9]/
        case_hash[:digit] += 1
      else
        case_hash[:special_char] += 1
      end
    end
    case_hash
  end

end