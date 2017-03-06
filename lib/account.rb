class Account
  attr_reader :balance, :transaction_history

  MIN_BALANCE = 0

  def initialize
    @balance = MIN_BALANCE
    @transaction_history = []
  end

  def deposit(money)
    transaction = Transaction.new(description: "Credit", amount: money, date: DateTime.now)
    @transaction_history << transaction
    add(money)
  end

  def withdraw(money)
    transaction = Transaction.new(description: "Debit", amount: money, date: DateTime.now)
    @transaction_history << transaction
    deduct(money)
  end

private
  def add(money)
    @balance+=money
  end

  def deduct(money)
    raise "Insufficient balance in account" if @balance - money < MIN_BALANCE
    @balance-=money
  end

end
