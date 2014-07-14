class Array

  def group_on_length
    hash_group_on_length = Hash.new { |hash, key| hash[key] = Array.new }

    for var in self
      hash_group_on_length[var.to_s.length] << var
    end

    hash_group_on_length
  end

end
