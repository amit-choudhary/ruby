class Array

  def group_on_size
    array_hash = Hash.new { |hash, key| hash[key]=[] }

    for i in 0...size
      array_hash[self[i].to_s.length] << self[i]
    end

    array_hash
  end

  def group_on_odd_even
    group_on_size.inject(Hash.new { |hash, key| hash[key] = []  }) do |hash, (key,value)|
      if key.even?
        hash[:even] << value
      else
        hash[:odd] << value
      end
      hash
    end
  end

end