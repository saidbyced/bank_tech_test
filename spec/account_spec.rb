require 'account'

RSpec.describe Account do
  it "should print a statement" do
    expect(subject.print_statement).to eq("date || credit || debit || balance")
  end

  it "should receive a deposit" do
    expect(subject.deposit(1000)).to eq("Deposit processed")
  end
end
