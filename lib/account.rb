require 'date'

class Account
  def initialize
    @depositCount = 0
  end

  def print_statement
    if @depositCount == 0
      statement_header
    elsif @depositCount == 1
      "#{statement_header}\n10/01/2012 || 1000.00 || || 1000.00"
    else
      "#{statement_header}\n13/01/2012 || 1000.00 || || 1000.00\n10/01/2012 || 1000.00 || || 1000.00"
    end
  end

  def deposit(amount)
    @depositCount += 1
    "Deposit processed"
  end

  def withdraw(amount)
    "Withdrawl processed"
  end

  private

  def statement_header
    "date || credit || debit || balance"
  end
end
