require_relative 'blank_argument.rb'

class Name

  def not_valid?(name)
    name.nil? or name == false or name.length == 0
  end

  def initialize(firstname, lastname)
    if (not_valid?(firstname) or firstname[0] != firstname[0].capitalize) or (not_valid?(lastname))
      raise BlankArgument
    end
    @firstname = firstname
    @lastname = lastname
  end

end