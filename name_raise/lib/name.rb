require_relative 'blank_argument'
require_relative 'firstname_error'

class Name

  def invalid?(name)
    name.nil? || name.length == 0
  end

  def initialize(firstname, lastname)
    if invalid?(firstname)
      raise BlankArgument.new('First name is blank. Please Enter again.')
    elsif firstname[0] != firstname[0].capitalize
      raise FirstnameError.new('First alphabet of first name is not capital. Please Enter again')
    elsif invalid?(lastname)
      raise BlankArgument.new('Last name is blank. Please Enter again.')
    end
    @firstname = firstname
    @lastname = lastname
  end

end
