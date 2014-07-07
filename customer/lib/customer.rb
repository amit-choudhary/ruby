class Customer

  @@account_no = 0
  attr_accessor :balance, :account_no

  def initialize(name)
    @name = name
    @account_no = @@account_no + 1 
    @balance = 1000
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount > @balance
      puts 'Sorry Balance not Sufficient'
    else
      @balance -= amount
    end
  end

end