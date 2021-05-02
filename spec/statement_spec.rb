require 'bank'
require 'statement'

describe '#statement' do
  context 'allows a customer to print a statement' do
  it 'prints a formated string "date || credit || debit || balance"' do
    bank = Bank.new
    statement = Statement.new(bank)
  expect(statement.print_statement).to include 'date || credit || debit || balance'
  end
  it 'prints a formated string with a statement title, deposit(1000) and date 10/01/2012' do
    bank = Bank.new
    bank.deposit(1000, '10/01/2012')
    statement = Statement.new(bank)
  expect(statement.print_statement).to include 'date || credit || debit || balance'
  expect(statement.print_statement).to include '10/01/2012 || 1000 || || 1000'
  end
  end 
end