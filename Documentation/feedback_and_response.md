# Feedback from reviewer

### Feedback

Review
1. Nice tests
2. Clean code, except for the decimal point bit (you cannot hard code zeroes).
3. Using unshift is never ideal. in the case of a very large number of transactions, each call to unshift needs to move by one all the aother transactions in memory. pop is always preferred. (look at the second answer on this https://stackoverflow.com/questions/3718625/what-does-rubys-arrayshift-do)
4. What if I am depositing cash that includes pence? e.g. (`account.deposit(23.45)`)
5. No need for confirmations to the client. In fact, this program is going to be interacted with by a bigger program, not a human.
6. print statement should actually print the statement, not just return it. Because of it, and because it deals with input/output, it should be in a different class.
7. You store duplicate information in memory (the statement, and the balance). This is not recommended. In fact, most banking apps do not store any current balance (ask Tatsiana who worked at Monzo if you are curious)

Documentation
8. You can embed images in your README, and also feel free to add all your notes to the same README. It's nice to have one central place to look at.

### My response

1. Thanks 😊
2. Absolutely true. I could have made an easy assumption that these values were 'floating point' ones and not hardcoded the zero values. I will recitfy this. ✅
3. Interesting. I will have a look at unshift as a function and see if I can't come across a more elegant way to store and return the transactions.
4. As with point 2, I did not make the simple connection that accounts/banking might work with decimal values. I will recitfy this.
5. Good to know - I think this is something I personally would have clarified with the client prior to undertaking the work. As part of this, if there is no response how do you write good TDD that checks behaviour instead of state? I will invesitgate this and correct my code.
6. Easy fix - thank you for pointing it out. I made the assumption that this code might well slot into a larger program that has a display interface but I wonder if that is an assumption I should make.
7. Very interesting indeed. If they don't store balance (even if only in a session) how do they display it..? Something to investigate.
8. I will absolutely correct this - centralised information is an important UX consideration.
