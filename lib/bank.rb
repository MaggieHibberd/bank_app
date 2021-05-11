
class Bank

  attr_reader :balance, :traansactions

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(money_in, date)
    @date = date
    @balance += money_in
    @transactions << "#{@date} || #{'%.2f' % money_in} || #{@money_out}|| #{'%.2f' % @balance}\n"
  end

  def withdrawl(money_out, date)
    raise 'Insufficient funds in your account' if @balance == 0
    @date = date
    @money_out = money_out
    @balance -= money_out
    @transactions << "#{@date} || || #{'%.2f' % @money_out} || #{'%.2f' % @balance}\n"
  end
end
