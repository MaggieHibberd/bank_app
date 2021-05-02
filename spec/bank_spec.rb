require 'bank'
describe Bank do 
  it 'initializes with a balance of 0' do
    bank = Bank.new
    balance = bank.balance
  expect(balance).to eq  0
  end
end 