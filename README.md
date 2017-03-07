# bank-tech-test

##Specification
* You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

##User Stories
```
1. As a user so that I have somewhere store my money I would like to have an account

2. As a user so that I can have money in my account I would like to be able to deposit money

3. As a user so that I can take my money to I would like to be able to withdraw my money

4. As a user I would like my transactions to be stored somewhere in memory

5. As a user so that I can keep track of my transactions I would like to be able to see an account statement
```

##Acceptance Criteria
```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

##Domain Models

Money — Deposit—> Account
Account — Withdraw —> Money
Account — Store —> Transaction ——> History
Account — Print —> Account Statement

###Account

|Properties|Methods|
|----------|-----|
|Balance| Deposit|
|Statement|Withdraw|
||Show Statement|

###Transactions

|Properties|Methods|
|----------|-------|
|Credit ||
|Debit||
|Date||
|Balance||

###Statement

|Properties|Methods|
|----------|-------|
|Transaction History|add_transaction_to_history|


###Statement Printer

|Properties|Methods|
|----------|-------|
||Print Statement|
