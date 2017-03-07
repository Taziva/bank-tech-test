class Account
  attr_reader :balance, :statement

  MIN_BALANCE = 0

  def initialize
    @balance = MIN_BALANCE
    @statement = Statement.new
  end

  def deposit(money)
    raise "Please enter a positive amount" if money < 0
    add_transaction(credit: money, debit: nil)
    add(money)
  end

  def withdraw(money)
    raise "Please enter a positive amount" if money < 0
    raise "Insufficient balance in account" if @balance - money < MIN_BALANCE
    add_transaction(debit:money, credit: nil)
    deduct(money)
  end

  def show_statement
    printer = StatementPrinter.new
    printer.print_statement(@statement.history)
  end

private
  def add(money)
    @balance+=money
  end

  def deduct(money)
    @balance-=money
  end

  def add_transaction(debit:, credit:)
    transaction = Transaction.new(debit: debit, credit: credit, balance: @balance)
    @statement.add_transaction(transaction.return_data)
  end

end
