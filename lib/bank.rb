
class Bank

  attr_reader :balance

  def initialize
    @balance =  0
    @header = 'date || credit || debit || balance'
  end

  def deposit(money_in)
    @balance += money_in
  end

  def withdrawl(money_out)
    @balance -= money_out
  end

  def statement 
    @header 
  end


end