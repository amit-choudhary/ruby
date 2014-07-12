require_relative 'blank_argument'
require_relative 'firstname_error'

class Name

  def invalid?(name)
    name.nil? || name.length == 0
  end

  def initialize(firstname, lastname)
    if invalid?(firstname)
      raise BlankArgument
    elsif firstname[0] != firstname[0].capitalize
      raise FirstnameError
    elsif invalid?(lastname)
      raise BlankArgument
    end
    @firstname = firstname
    @lastname = lastname
  end

end
