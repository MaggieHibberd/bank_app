require 'bank'
require 'statement'

describe '#statement' do
  context 'allows a customer to print a statement' do
  it 'prints a formated string "date || credit || debit || balance"' do
    bank = instance_double('bank', :header => 'date || credit || debit || balance', :array => [])
    statement = Statement.new(bank)
  expect(statement.print_statement).to include 'date || credit || debit || balance'
  end
  it 'prints a formated string with a statement title, deposit(1000) and date 10/01/2012' do
    bank = instance_double('bank', :header => 'date || credit || debit || balance', :array => ['10/01/2012 || 1000 || || 1000'])
    statement = Statement.new(bank)
  expect(statement.print_statement).to include 'date || credit || debit || balance'
  expect(statement.print_statement).to include '10/01/2012 || 1000 || || 1000'
  end
  it 'prints a formated string with a statement title, deposit(1000) and date 10/01/2012' do
    bank = instance_double('bank', :header => 'date || credit || debit || balance', :array => ['10/01/2012 || 1000 || || 1000', '13/01/2012 || 1000 || || 1000'])
    statement = Statement.new(bank)
  expect(statement.print_statement).to include 'date || credit || debit || balance'
  expect(statement.print_statement).to include '10/01/2012 || 1000 || || 1000'
  expect(statement.print_statement).to include '13/01/2012 || 1000 || || 1000'
  end
    it 'prints a formated string with a statement title, multiple deposits and a withdrawl' do
      bank = instance_double('bank', :header => 'date || credit || debit || balance', :array => ['10/01/2012 || 1000 || || 1000,
      13/01/2012 || 2000 || || 3000 
      14/01/2012 || || 500 || 2500'])
    statement = Statement.new(bank)
  expect(statement.print_statement).to include 'date || credit || debit || balance'
  expect(statement.print_statement).to include '14/01/2012 || || 500 || 2500'
  expect(statement.print_statement).to include '13/01/2012 || 2000 || || 3000'
  expect(statement.print_statement).to include '10/01/2012 || 1000 || || 1000'
  end 
end
end