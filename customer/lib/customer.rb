class Customer
  @@account_number = 1
  attr_reader :balance, :account_no

  def initialize(name)
    @name = name
    @account_no = @@account_number
    @@account_number += 1
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

  def to_s
    "Name: #{ @name } Account No.: #{ account_no } Balance: #{ balance }"
  end

end
