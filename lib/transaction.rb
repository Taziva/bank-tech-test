class Transaction
  attr_reader :description, :amount, :date
  def initialize(description:,amount:, date: DateTime.now.strftime('%d/%m/%Y'))
    @description = description
    @amount = amount
    @date = date
  end


end
