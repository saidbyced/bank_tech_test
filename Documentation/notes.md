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
