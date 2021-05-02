
class Bank

  attr_reader :balance

  def initialize
    @balance =  0
  end

  def deposit(money_in)
    money_in > 10 ? @balance += 15 : @balance += 10

  end


end