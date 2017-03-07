class Transaction
  attr_reader :debit, :credit, :date, :balance
  def initialize(debit:nil,credit:nil,balance: , date: DateTime.now.strftime('%d/%m/%Y'))
    @credit = credit
    @debit = debit
    @date = date
    @balance = balance
  end

  def return_data
    {date: @date, debit: @debit, credit: @credit, balance: @balance}
  end
end
