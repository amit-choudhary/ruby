class Array

  def group_by_length
    hash_group_by_length = Hash.new { |hash, key| hash[key] = Array.new }

    for var in self
      hash_group_by_length[var.to_s.length] << var
    end

    hash_group_by_length
  end

end
