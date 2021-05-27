# frozen_string_literal: true

class Bank
  attr_reader :balance, :transactions

  def initialize
    @transactions = []
    @balance = 0
  end

  TODAYS_DATE = Time.now.strftime('%d/%m/%Y')

  def deposit(money_in, date = TODAYS_DATE)
    @balance += money_in
    @transactions << "#{date} || #{'%.2f' % money_in} || #{@money_out}|| #{format('%.2f', @balance)}\n"
  end

  def withdrawal(money_out, date = TODAYS_DATE)
    raise 'Insufficient funds in your account' if @balance.zero?

    @money_out = money_out
    @balance -= money_out
    @transactions << "#{date} || || #{format('%.2f', @money_out)} || #{format('%.2f', @balance)}\n"
  end
end
