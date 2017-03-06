require 'statement'
describe Statement do
  let(:statement){described_class.new}
  let(:credit_transaction){double :transaction ,:description => "Credit", :amount => 100, :date => "03/03/2017"}
  context 'On initialization' do
    it 'has an array of transactions' do
      expect(statement.history).to be_an(Array)
    end
  end

  describe "#add_transaction" do
    it "adds a transaction to the array" do
      statement.add_transaction(credit_transaction)
      expect(statement.history).to include(credit_transaction)
    end
  end
end
