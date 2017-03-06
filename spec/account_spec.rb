require 'account'
describe Account do
  it "has a balance" do
    expect(subject).to respond_to(:balance)
    expect(subject.balance).to eq 0;
  end
end
