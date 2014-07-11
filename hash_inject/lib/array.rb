class Array

  def group_on_size
    hash_group_length = Hash.new { |hash, key| hash[key] = Array.new }

    for i in 0...size
      hash_group_length[self[i].to_s.length] << self[i]
    end

    hash_group_length
  end

  def group_on_odd_even
    group_on_size.inject(Hash.new { |hash_group_odd_even, key| hash_group_odd_even[key] = Array.new } ) do |hash_group_odd_even, (key,value)|
      if key.even?
        hash_group_odd_even[:even] << value
      else
        hash_group_odd_even[:odd] << value
      end
      hash_group_odd_even
    end
  end

end