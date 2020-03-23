require 'account'

RSpec.describe Account do
  it "should receive a deposit" do
    expect(subject.deposit(1000)).to eq("Deposit processed")
  end

  it "should provide a withdrawl" do
    expect(subject.withdraw(500)).to eq("Withdrawl processed")
  end

  describe "#print_statement" do
    it "should print a statement" do
      expect(subject.print_statement).to eq("date || credit || debit || balance")
    end

    it "should print a deposit in the statement" do
      allow(Date).to receive(:today).and_return Date.new(2012,1,10)
      
      subject.deposit(1000)
  
      expect(subject.print_statement).to eq("date || credit || debit || balance\n10/01/2012 || 1000.00 || || 1000.00")
    end

    it "should print mutiple deposits in the statement" do
      allow(Date).to receive(:today).and_return Date.new(2012,1,10)
      subject.deposit(1000)

      allow(Date).to receive(:today).and_return Date.new(2012,1,13)
      subject.deposit(2000)
  
      expect(subject.print_statement).to eq("date || credit || debit || balance\n13/01/2012 || 1000.00 || || 1000.00\n10/01/2012 || 1000.00 || || 1000.00")
    end

  end
end
