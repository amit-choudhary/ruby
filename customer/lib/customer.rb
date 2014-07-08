class Customer
  @@account_number = 0
  attr_accessor :balance
  attr_reader :account_no

  def initialize(name, balance = 1000)
    @name = name
    @account_no = @@account_number + 1
    @@account_number += 1
    @balance = balance
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