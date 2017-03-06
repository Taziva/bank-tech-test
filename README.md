# bank-tech-test
##User Stories
```
1. As a user so that I have somewhere store my money I would like to have an account

2. As a user so that I can have money in my account I would like to be able to deposit money

3. As a user so that I can take my money to I would like to be able to withdraw my money

4. As a user I would like my transactions to be stored somewhere in memory

5. As a user so that I can keep track of my transactions I would like to be able to see an account statement
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
||Withdraw|


###Statement

|Properties|Methods|
|----------|-------|
|Transaction History|add_transaction_to_history|
|Credits||
|Debits||

###Statement Printer

|Properties|Methods|
|----------|-------|
||Print Statement|
