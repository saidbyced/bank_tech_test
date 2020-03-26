require 'date'

class Account
  def print_statement
    return statement
  end

  def deposit(credit)
    @balance += credit
    @transactions.unshift("\n#{date} || #{'%.2f' % credit} || || #{'%.2f' % @balance}")
    
    return "Deposit processed"
  end

  def withdraw(debit)
    @balance -= debit
    @transactions.unshift("\n#{date} || || #{'%.2f' % debit} || #{'%.2f' % @balance}")

    return "Withdrawl processed"
  end

  private

  def initialize
    @balance = 0
    @transactions = []
  end

  def date
    Date.today.strftime("%d/%m/%Y")
  end

  def statement
    statement = "date || credit || debit || balance"
    @transactions.each do |transaction|
      statement += transaction
    end

    return statement
  end
end
