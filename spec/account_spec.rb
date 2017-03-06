require 'account'
describe Account do
  let(:account){described_class.new}
  it "has a balance" do
    expect(account).to respond_to(:balance)
    expect(account.balance).to eq 0;
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
end
