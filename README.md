# bank_app

Requirements
------------
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

Acceptance criteria
--------------------
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

````
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
````


````
input                                                                     ||                                 output
----------------------------------------------------------------------------------------------------------------------
Starts with a balance of 0                                                ||                                Balnce = 0
Deposit 10                                                                ||                              Balance = 10
Deposit 10, Deposit 10, Deposit 15                                        ||                              Balance = 35
Deposit 1000                                                              ||                            Balance = 1000
Withdrawl 50 (previous deposit of 100)                                    ||                            Balance = 50
Withdrawl 500 (previous deposit credit of 1000 & 2000)                    ||                            Balance = 2500
Starts off with a formated string  'date || credit || debit || balance'   ||      'date || credit || debit || balance'

Statement is printed with a header                                        ||      'date || credit || debit || balance'


A statement can be printed with a date a deposit & balance                ||    'date || credit || debit || balance'
date 10/01/2012, deposit 1000.00                                               '10/01/2012 || 1000.00 || || 1000.00'  
  

A statement can be printed with a date, deposit                           ||     'date || credit || debit || balance'
deposit 2000.00 (13/01/2012)                                                     '13/01/2012 || 2000.00 || || 3000.00'
deposit 1000.00 (10/01/2012)                                                     '10/01/2012 || 1000.00 || || 1000.00'

A statement can be printed with a date, deposit & withdrawl               ||     'date || credit || debit || balance'
deposit 1000.00 (14/01/2012)                                                     '14/01/2012 || || 500.00 || 2500.00'
deposit 2000.00 (13/01/2012)                                                     '13/01/2012 || 2000.00 || || 3000.00'
deposit 1000.00 (10/01/2012)                                                     '10/01/2012 || 1000.00 || || 1000.00'

Edge case
------------
Attempted withdrawl of 50 with balance of 0                                ||    'Insufficient funds in your account'
                                                                          
````