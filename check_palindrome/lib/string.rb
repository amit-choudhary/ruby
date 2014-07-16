class String

  def palindrome?
    var = -1
    flag = true
    ((length / 2).ceil).times do
      if flag == false
        break
      else
        var += 1
        flag = self[var] == self[(length - 1) - var]
      end
    end
    flag
  end

end