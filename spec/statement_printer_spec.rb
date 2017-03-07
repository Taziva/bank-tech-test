require 'statement_printer'
describe StatementPrinter do
  let(:printer){described_class.new}
  let(:arr){[{ :date => "03/03/2017", :credit => 200, :debit => nil, :balance => 200}]}
  it 'responds to print_statement' do
    expect(printer).to respond_to(:print_statement)
  end
  describe "#print_statement" do
    it 'prints a statement' do
      expect{printer.print_statement(arr)}.to output("\"        Date        ||       Credit       ||       Debit        ||      Balance       \"\n\"     03/03/2017     ||        200         ||                    ||        200         \"\n").to_stdout
    end
  end
end
