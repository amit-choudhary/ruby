require 'prime'

class Fixnum

  def primes_upto(limit)
    self.step(limit) do |i|
      if i.prime?
        print "#{ i } "
      end
    end
  end

end
