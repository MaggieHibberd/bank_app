require 'bank'

class Statement
  def initialize(bank)
    @bank = bank
    @header = 'date || credit || debit || balance' 
  end

  def print_statement
    return "#{@header}\n"
  end
end