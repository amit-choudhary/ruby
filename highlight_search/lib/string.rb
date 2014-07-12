class String

  def highlight_search(str)
    occurence_count = 0
    regex_word = /(#{str})/i
    new_str = gsub(regex_word) do |match|
      occurence_count += 1
      "(#{ match })"
    end
    "#{ new_str } \nTotal occurences found: #{ occurence_count }"
  end

end
