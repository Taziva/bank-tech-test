require "transaction"

describe Transaction do
  let(:credit_transaction){described_class.new(credit: 20, balance: 100)}
  let(:debit_transaction){described_class.new(debit: 20, balance: 100)}

  context "on initialization" do
    it "can be a credit transaction" do
      expect(credit_transaction).to respond_to(:credit)
    end
    it "can be a debit transaction" do
      expect(debit_transaction).to respond_to(:debit)
    end
    it "has an balance property" do
      expect(debit_transaction.balance).to eq 100
    end
    it "has a date" do
      expect(debit_transaction.date).to eq DateTime.now.strftime('%d/%m/%Y')
    end
  end

  describe '#return_data' do
    it 'returns a hash' do
      expect(debit_transaction.return_data).to eq({:date=>DateTime.now.strftime('%d/%m/%Y'), :debit=>20, :credit=>nil, :balance=>100})
    end
  end
end
