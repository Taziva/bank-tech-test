require 'account'
describe Account do
  let(:account){described_class.new}
  context "on initialization" do
    it "has a balance" do
      expect(account).to respond_to(:balance)
      expect(account.balance).to eq 0;
    end
    it 'has an array to hold transactions' do
      expect(account).to respond_to(:transaction_history)
      expect(account.transaction_history).to be_an(Array)
    end
  end

  describe "#deposit" do
    context "when adding money to a new account" do
      it "responds to the deposit method" do
        expect(account).to respond_to(:deposit)
      end
      it "adds a specified amount to the account balance" do
        account.deposit(100)
        expect(account.balance).to eq 100
      end
    end
  end

  describe "#withdraw" do
    context "when withdrawing money from an account" do
      it "responds to the withdraw method" do
        expect(account).to respond_to(:withdraw)
      end
      it "takes a a specified amount from the account balance" do
        account.deposit(100)
        account.withdraw(50)
        expect(account.balance).to eq(50)
      end
      it "can't take out more money than is in the balance" do
        account.deposit(50)
        expect{account.withdraw(100)}.to raise_error("Insufficient balance in account")
      end
    end
  end
end
