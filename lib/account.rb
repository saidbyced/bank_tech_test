require 'date'

class Account
  def initialize
    @balance = 0
    @transactions = []
  end

  def print_statement
    return statement
  end

  def deposit(credit)
    date = Date.today.strftime("%d/%m/%Y")

    @balance += credit
    @transactions.unshift("\n#{date} || #{credit}.00 || || #{@balance}.00")
    return "Deposit processed"
  end

  def withdraw(amount)
    return "Withdrawl processed"
  end

  private

  def statement
    statement = "date || credit || debit || balance"
    @transactions.each do |transaction|
      statement += transaction
    end
    
    return statement
  end
end
