require_relative 'blank_argument.rb'

class Name

  def valid?(name)
    name.nil? or name == false or name.length == 0
  end

  def initialize(firstname, lastname)
    raise BlankArgument if valid?(firstname) or firstname[0] != firstname[0].capitalize
    raise BlankArgument if valid?(lastname)
    @firstname = firstname
    @lastname = lastname
  end

end