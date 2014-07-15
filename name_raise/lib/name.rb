require_relative 'blank_argument'
require_relative 'firstname_error'

class Name

  def invalid?(name)
    name.nil? || name.length == 0
  end

  def initialize(firstname, lastname)
    if invalid?(firstname)
      puts 'First name is blank. Please Enter again.'
      raise BlankArgument
    elsif firstname[0] != firstname[0].capitalize
      puts 'First alphabet of first name is not capital. Please Enter again'
      raise FirstnameError
    elsif invalid?(lastname)
      puts 'Last name is blank. Please Enter again.'
      raise BlankArgument
    end
    @firstname = firstname
    @lastname = lastname
  end

end
