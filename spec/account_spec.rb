require 'account'

RSpec.describe Account do
  it "should print a statement" do
    expect(subject.print_statement).to eq("date || credit || debit || balance")
  end
end
