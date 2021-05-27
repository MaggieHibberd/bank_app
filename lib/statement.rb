# frozen_string_literal: true

require 'bank'

class Statement
  def initialize(bank)
    @bank = bank
    @header = 'date || credit || debit || balance'
  end

  def print_statement
    "#{@header}\n" + @bank.transactions.reverse.join
  
  end
end
