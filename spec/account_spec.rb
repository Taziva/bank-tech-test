require 'account'
RSpec.describe Account do
  let(:account){described_class.new}
  let(:debit_transaction){double :transaction ,:description => "Debit", :amount => 100, :date => "03/03/2017"}

  context "on initialization" do
    it "has a balance" do
      expect(account).to respond_to(:balance)
      expect(account.balance).to eq 0;
    end
    it 'has an array to hold transactions' do
      expect(account).to respond_to(:statement)
      expect(account.statement).to be_an(Object)
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
      it "records a transaction to the transaction history"do
        account.deposit(100)
        expect(account.statement.history.length).to eq 1
      end
    end
    context "when inputing a negative number" do
      it 'raises an error' do
        expect{account.deposit(-100)}.to raise_error('Please enter a positive amount')
      end
    end
  end

  describe "#withdraw" do
    context "when withdrawing money from an account" do
      before do
        account.deposit(100)
      end
      context "when there are sufficient funds" do
        it "responds to the withdraw method" do
          expect(account).to respond_to(:withdraw)
        end
        it "takes a a specified amount from the account balance" do
          account.withdraw(50)
          expect(account.balance).to eq(50)
        end
        it "records a transaction to the transaction history"do
          expect{account.withdraw(50)}.to change{account.statement.history.length}.by(1)
        end
      end
      context "when inputing a negative number" do
        it 'raises an error' do
          expect{account.withdraw(-100)}.to raise_error('Please enter a positive amount')
        end
      end
      context "when there are insufficient funds in account" do
        it "raises an error" do
          expect{account.withdraw(150)}.to raise_error("Insufficient balance in account")
        end
        it "it does not add the transaction to the transaction history" do
          expect{account.withdraw(150) rescue 150 }.to change{account.statement.history.length}.by(0)
        end
      end
    end
  end
end
