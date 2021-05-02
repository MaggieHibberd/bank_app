
class Bank

  attr_reader :balance, :array

  def initialize
    @array = []
    @balance = 0
  end

  def deposit(money_in, date)
    @date = date
    @balance += money_in
    @array << "#{@date} || #{money_in} || #{@money_out}|| #{@balance}\n"
  end

  def withdrawl(money_out, date)
    @date = date
    @money_out = money_out
    @balance -= money_out
    @array << "#{@date} || || #{@money_out} || #{@balance}\n"
  end

end