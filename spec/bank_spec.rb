# frozen_string_literal: true

require 'bank'
describe Bank do
  context 'Class initializes with a balance of 0' do
    it 'initializes with a balance of 0' do
      bank = Bank.new
      balance = bank.balance
      expect(balance).to eq 0
    end
  end
end

describe '#deposit' do
  context 'allows a customer to make a deposit' do
    it 'allows you to make a deposit of 10' do
      bank = Bank.new
      bank.deposit(10.00, '10/01/2012')
      expect(bank.balance).to eq 10.00
    end
    it 'allows 3 deposits of 10, 10, & 15 with a resulting balance of 35' do
      bank = Bank.new
      bank.deposit(10.00, '10/01/2012')
      bank.deposit(10.00, '10/01/2012')
      bank.deposit(15.00, '10/01/2012')
      expect(bank.balance).to eq 35.00
    end
    it 'allows a deposit of 1000, leadind to a balance of 1000' do
      bank = Bank.new
      bank.deposit(1000.00, '10/01/2012')
      expect(bank.balance).to eq 1000.00
    end
  end
end

describe '#withdrawl' do
  context 'allows a customer to make a withdrawl' do
    it 'allows you to make a withdrawl of 50, with previous deposit of 100. Left with balance of 50' do
      bank = Bank.new
      bank.deposit(100.00, '10/01/2012')
      bank.withdrawal(50.00, '13/01/2012')
      expect(bank.balance).to eq 50.00
    end
    it 'allows you to make a withdrawl of 500, with previous balance of 3000. Left with balance of 2500' do
      bank = Bank.new
      bank.deposit(1000.00, '10/01/2012')
      bank.deposit(2000.00, '13/01/2012')
      bank.withdrawal(500.00, '13/01/2012')
      expect(bank.balance).to eq 2500.00
    end
  end
end

describe '#default date' do
  context 'if no date given a default date is provided using Time.now method' do
    it 'defaults to Time.now as the date if not date provided' do
      TODAYS_DATE = Time.now.strftime('%d/%m/%Y')
      bank = Bank.new
      bank.deposit(100.00)
      bank.withdrawal(50.00, "#{TODAYS_DATE}")
      expect(bank.balance).to eq 50.00
    end
  end 
end 

describe '#error' do
  context 'throws an error if a customer attempts to withdraw when balance = 0' do
    it 'throws an error message' do
      expect { Bank.new.withdrawal(50, '13/01/2012') }.to raise_error('Insufficient funds in your account')
    end
  end
end
