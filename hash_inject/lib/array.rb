class Array
  def hash_on_evenodd_size
    array_hash = Hash.new { |hash, key| hash[key]=[] }

    for i in 0...size
      array_hash[self[i].to_s.length] << self[i]
    end
    
    array_hash.inject(Hash.new { |hash, key| hash[key] = []  }) do |hash, (key,value)|
      if key % 2 == 0
        hash["even"] << value
      else
        hash["odd"] << value
      end
      hash
    end
  end
end