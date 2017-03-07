class StatementPrinter

  def print_statement(arr)
     p ["Date", "Credit", "Debit", "Balance"].map!{|header| header.center(20)}.join("||")
   arr.each do |transaction|
     p transaction.values.map!{ |x| x.to_s.center(20) }.join("||")
   end
  end

  private

end
