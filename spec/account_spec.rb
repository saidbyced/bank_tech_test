require 'account'

RSpec.describe Account do
  it "should receive a deposit" do
    expect(subject.deposit(1000)).to be_truthy
  end

  it "should provide a withdrawl" do
    expect(subject.withdraw(500)).to be_truthy
  end

  describe "#print_statement" do
    it "should print an empty statement without other transactions" do
      expect(subject.print_statement).to eq("date || credit || debit || balance")
    end

    it "should print a deposit in the statement" do
      allow(Date).to receive(:today).and_return Date.new(2012,1,10)
      
      subject.deposit(1000)
  
      expect(subject.print_statement).to eq("date || credit || debit || balance\n10/01/2012 || 1000.00 || || 1000.00")
    end

    it "should print deposits in the statement in descencding date order" do
      allow(Date).to receive(:today).and_return Date.new(2012,1,10)
      subject.deposit(1000)

      allow(Date).to receive(:today).and_return Date.new(2012,1,13)
      subject.deposit(2000)
  
      expect(subject.print_statement).to eq("date || credit || debit || balance\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00")
    end

    it "should print an accurate statement with deposits and withdrawls" do
      allow(Date).to receive(:today).and_return Date.new(2012,1,10)
      subject.deposit(1000)

      allow(Date).to receive(:today).and_return Date.new(2012,1,13)
      subject.deposit(2000)

      allow(Date).to receive(:today).and_return Date.new(2012,1,14)
      subject.withdraw(500)
  
      expect(subject.print_statement).to eq("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00")
    end

    it "should print an print decimalised values with floating point deposits/withdrawls" do
      allow(Date).to receive(:today).and_return Date.new(2012,1,10)
      subject.deposit(1234.56)

      allow(Date).to receive(:today).and_return Date.new(2012,1,14)
      subject.withdraw(123.45)
  
      expect(subject.print_statement).to eq("date || credit || debit || balance\n14/01/2012 || || 123.45 || 1111.11\n10/01/2012 || 1234.56 || || 1234.56")
    end
  end
end
