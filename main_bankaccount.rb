require './bankaccount.rb'

my_account = Bankaccount.create("danny")
your_account = Bankaccount.create("Josh")

p my_account
p your_account

p Bankaccount.accounts
