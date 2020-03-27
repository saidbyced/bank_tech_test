require 'date'

class Account
  def print_statement
    print statement
  end

  def deposit(credit)
    @transactionList.push({date: date, type: "credit", amount: credit})
  end

  def withdraw(debit)
    @transactionList.push({date: date, type: "debit", amount: debit})
  end

  private

  def initialize
    @balance = 0
    @transactions = []
    @transactionList = []
  end

  def date
    Date.today.strftime("%d/%m/%Y")
  end

  def decimalised(value)
    return '%.2f' % value
  end

  def statement
    balance = 0
    formattedTransactionList = []
    
    @transactionList.each do |transaction|
      formattedTransaction = "\n"

      case transaction[:type]
      when "credit"
        balance += transaction[:amount]
        formattedTransactionList.push("\n#{transaction[:date]} || #{decimalised(transaction[:amount])} || || #{decimalised(balance)}")
      when "debit"
        balance -= transaction[:amount]
        formattedTransactionList.push("\n#{transaction[:date]} || || #{decimalised(transaction[:amount])} || #{decimalised(balance)}")
      else
        raise "Invalid transaction type"
      end
    end

    statement = "date || credit || debit || balance" # header
    formattedTransactionList.reverse_each do |formattedTransaction|
      statement += formattedTransaction
    end

    return statement
  end
end
