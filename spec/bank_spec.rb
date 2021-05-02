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
    #   balance = bank.balance
    expect(bank.balance).to eq 10
    end
    end
end 