require 'bank'
require 'statement'

describe '#statement' do
  context 'allows a customer to print a statement' do
  it 'prints a formated string "date || credit || debit || balance"' do
    bank = Bank.new
    statement = Statement.new(bank)
  expect(statement.print_statement).to include 'date || credit || debit || balance'
  end
  end 
end