
class Bank

  attr_reader :balance

  def initialize
    @balance =  0
  end

  def deposit(money_in)
    @balance += money_in
  end

  def withdrawl(money_out)
    @balance -= 50
  end


end