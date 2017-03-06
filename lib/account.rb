class Account
  attr_reader :balance, :transaction_history

  MIN_BALANCE = 0

  def initialize
    @balance = MIN_BALANCE
    @transaction_history = []
  end

  def deposit(money)
    raise "Please enter a positive amount" if money < 0
    add_transaction('Credit', money)
    add(money)
  end

  def withdraw(money)
    raise "Please enter a positive amount" if money < 0
    raise "Insufficient balance in account" if @balance - money < MIN_BALANCE
    add_transaction('Debit', money)
    deduct(money)
  end

private
  def add(money)
    @balance+=money
  end

  def deduct(money)
    @balance-=money
  end

  def add_transaction(description, money)
    transaction = Transaction.new(description: description, amount: money)
    @transaction_history << transaction
  end

end
