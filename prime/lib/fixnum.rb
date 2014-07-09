require 'prime'

class Fixnum

  def primes_upto(limit)
    self.step(limit) do |i|
      print "#{ i } " if i.prime?
    end
  end

end
