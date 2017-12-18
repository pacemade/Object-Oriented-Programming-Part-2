require './bankaccount.rb'

danny = Bankaccount.create("Danny", 0)
josh = Bankaccount.create("Josh", 0)

p Bankaccount.total_funds

danny.deposit(1000)
p danny
josh.deposit(500)
p josh

p Bankaccount.total_funds
