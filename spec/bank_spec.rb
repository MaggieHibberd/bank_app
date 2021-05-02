require 'bank'
describe Bank do 
  context 'You are able to see a balance' do
  it 'initializes with a balance of 0' do
    bank = Bank.new
    balance = bank.balance
  expect(balance).to eq  0
  end
  end
end

describe '#deposit' do
  context 'allows a customer to make a deposit' do
  it 'allows you to make a deposit of 10' do
    bank = Bank.new
    bank.deposit(10, 10/01/2012 )
  expect(bank.balance).to eq 10
  end
  it 'allows 3 deposits of 10, 10, & 15 with a resulting balance of 35' do
    bank = Bank.new
    bank.deposit(10, 10/01/2012)
    bank.deposit(10, 10/01/2012)
    bank.deposit(15, 10/01/2012)
  expect(bank.balance).to eq 35
  end
  it 'allows a deposit of 1000, leadind to a balance of 1000' do 
    bank = Bank.new
    bank.deposit(1000, 10/01/2012)
  expect(bank.balance).to eq 1000
  end
end 
end

describe '#withdrawl' do
  context 'allows a customer to make a withdrawl' do
  it 'allows you to make a withdrawl of 50, with previous deposit of 100. Left with balance of 50' do
    bank = Bank.new
    bank.deposit(100, 10/01/2012)
    bank.withdrawl(50, '13/01/2012')
  expect(bank.balance).to eq 50
  end
  it 'allows you to make a withdrawl of 500, with previous balance of 3000. Left with balance of 2500' do
    bank = Bank.new
    bank.deposit(1000, 10/01/2012)
    bank.deposit(2000, 13/01/2012)
    bank.withdrawl(500, '13/01/2012')
  expect(bank.balance).to eq 2500
  end
  end 
end

describe '#statement' do
  context 'allows a customer to print a statement' do
  it 'prints a formated string "date || credit || debit || balance"' do
    bank = Bank.new
  expect(bank.statement).to include 'date || credit || debit || balance'
  end
  it 'prints a formated string with a statement title, deposit(1000) and date 10/01/2012' do
    bank = Bank.new
    bank.deposit(1000, '10/01/2012')
  expect(bank.statement).to include 'date || credit || debit || balance'
  expect(bank.statement).to include '10/01/2012 || 1000 || || 1000'
  
  end
  it 'prints a formated string with a statement title, deposit(1000), date 10/01/2012 & deposit(2000), date 13/01/2012 ' do
    bank = Bank.new
    bank.deposit(1000, '10/01/2012')
    bank.deposit(2000, '13/01/2012')
  expect(bank.statement).to include 'date || credit || debit || balance'
  expect(bank.statement).to include '13/01/2012 || 2000 || || 3000'
  expect(bank.statement).to include '10/01/2012 || 1000 || || 1000'
  
  end
  it 'prints a formated string with a statement title, multiple deposits and a withdrawl' do
    bank = Bank.new
    bank.deposit(1000, '10/01/2012')
    bank.deposit(2000, '13/01/2012')
    bank.withdrawl(500,'14/01/2012')
  expect(bank.statement).to include 'date || credit || debit || balance'
  expect(bank.statement).to include '14/01/2012 || || 500 || 2500'
  expect(bank.statement).to include '13/01/2012 || 2000 || || 3000'
  expect(bank.statement).to include '10/01/2012 || 1000 || || 1000'
  
 
  end
  end
end 