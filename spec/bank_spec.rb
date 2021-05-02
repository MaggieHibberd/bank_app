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
  it 'allows you to make a despodit of 10' do
    bank = Bank.new
    bank.deposit(10)
  expect(bank.balance).to eq 10
  end
  end
  it 'allows 3 deposits of 10, 10, & 15 with a resulting balance of 35' do
    bank = Bank.new
    bank.deposit(10)
    bank.deposit(10)
    bank.deposit(15)
  expect(bank.balance).to eq 35
  end
  it 'allows a deposit of 1000, leadind to a balance of 1000' do 
    bank = Bank.new
    bank.deposit(1000)
  expect(bank.balance).to eq 1000
  end
end 