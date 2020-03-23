### Notes for ccompletion of tech test

Input/output table completed - IMG_0069.jpg

Ruby module that can be used from IRB directly. Functions look like 'deposit(something)' instead of 'account123.deposit(something)'. This is so that it can be required into a account controller if necessary.

Three functions:
- deposit e.g. deposit(1000)
- withdraw e.g. withdraw(500)
- print statement e.g. print_statement

---

Changed my mind - decided to run with a class so I can ensure encapsulation and ease of use.

Class - Account. Functions will be run on instances of Account.

New function looks:
- deposit e.g. account.deposit(1000)
- withdraw e.g. account.withdraw(500)
- print statement e.g. account.print_statement

Order of tests: statement, deposit, withdraw. This way can use statement to see result of deposit and withdraw.

Since it is a banking app, I imply that a it should confirm when making a deposit or withdrawl for user reassurance.

---

Completed app and refactored.

Assumptions to query with tech test provider:
- I have created confirmtation of deposit and withdrawl. Are these necessary/wanted?
- I have had the transactions printed in reverse date order - this is implied on the example output but not explicity stated. Is this what you would like?
- I have made an assumption that transactions are added on the date undertaken. Is this accurate or is it possible the could/would be restrospectively/prospectively added?
- I have created a class called 'Account' to hold these transactions. Are these being folded into greater logic, and if so, how would you like them provided (if not in this manner)?

Full time taken:  3 hours, 21 minutes.
