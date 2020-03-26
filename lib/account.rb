require 'date'

class Account
  def print_statement
    return statement
  end

  def deposit(credit)
    @balance += credit
    @transactions.push("\n#{date} || #{'%.2f' % credit} || || #{'%.2f' % @balance}")
  end

  def withdraw(debit)
    @balance -= debit
    @transactions.push("\n#{date} || || #{'%.2f' % debit} || #{'%.2f' % @balance}")
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
    @transactions.reverse_each do |transaction|
      statement += transaction
    end

    return statement
  end
end
