require './lib/account'
require './lib/transaction'
require './lib/statement'
require './lib/statement_printer'

account = Account.new
2.times{account.deposit(20)}
5.times{account.withdraw(5)}
2.times{account.deposit(200000)}
printer = StatementPrinter.new
arr = account.statement.history
