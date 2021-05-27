# frozen_string_literal: true

require 'bank'
require 'statement'

describe 'Banking application' do
  before(:each) do
    @bank = Bank.new
    @statement = Statement.new(@bank)
  end

  describe '#deposit' do
    it 'allows the user to make a deposit' do
      bank = Bank.new
      bank.deposit(10.00, '10/01/2012')
      
      p Statement.new(bank).print_statement
      expect { print Statement.new(bank).print_statement }.to output("date || credit || debit || balance\n"\
        "10/01/2012 || 10.00 || || 10.00\n").to_stdout
    end
  end
end
