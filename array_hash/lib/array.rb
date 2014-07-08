class Array

  def create_hash_onsize
    array_hash = Hash.new { |hash, key| hash[key]=[] }

    for i in 0...size
      array_hash[self[i].to_s.length] << self[i]
    end

    array_hash

  end

end