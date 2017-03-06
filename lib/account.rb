class Account
  attr_reader :balance
  MIN_BALANCE = 0
  def initialize
    @balance = MIN_BALANCE
  end

  def deposit(money)
    @balance+=money
  end

  def withdraw(money)
    raise "Insufficient balance in account" if @balance - money < MIN_BALANCE
    @balance-=money
  end



end
