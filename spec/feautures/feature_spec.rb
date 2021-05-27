# frozen_string_literal: true

require 'bank'
require 'statement'

describe 'Banking application' do

  describe '#deposit' do
    it 'allows the user to make a deposit' do
      bank = Bank.new
      bank.deposit(10.00, '10/01/2012')
      expect { print Statement.new(bank).print_statement }.to output("date || credit || debit || balance\n"\
        "10/01/2012 || 10.00 || || 10.00\n").to_stdout
    end
  end

  describe '#withdrawal' do
    it 'allows the user to make a withdrawal' do
      bank = Bank.new
      bank.deposit(100.00, '10/01/2012')
      bank.withdrawal(50.00, '13/01/2012')
      expect { print Statement.new(bank).print_statement }.to output("date || credit || debit || balance\n"\
        "13/01/2012 || || 50.00 || 50.00\n"\
        "10/01/2012 || 100.00 || || 100.00\n").to_stdout
    end
  end
end
