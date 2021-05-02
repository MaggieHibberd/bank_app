
class Bank

  attr_reader :balance

  def initialize
    @array = []
    @balance = 0
    @header = 'date || credit || debit || balance'
  end

  def deposit(money_in, date)
    @date = date
    @balance += money_in
    @array << "#{@date} || #{@balance} || ||\n"
  end

  def withdrawl(money_out)
    @balance -= money_out
  end

  def statement 
    return "#{@header}\n"  + @array.join

  end


end