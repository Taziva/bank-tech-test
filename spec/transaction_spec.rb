require "transaction"

describe Transaction do
  let(:credit_transaction){described_class.new(description: "Credit",amount: 50)}
  let(:debit_transaction){described_class.new(description: "Debit",amount: 50)}
  context "on initialization" do
    it "can be a credit transaction" do
      expect(credit_transaction.description).to eq "Credit"
    end
    it "can be a debit transaction" do
      expect(debit_transaction.description).to eq "Debit"
    end
    it "has an amount" do
      expect(debit_transaction.amount).to eq 50
    end
    it "has a date" do
      expect(debit_transaction.date).to eq DateTime.now.strftime('%d/%m/%Y')
    end
  end
end
