class Bankaccount

    @@interest_rate = 0.05
    @@accounts = []

    def initialize(name, balance)
      @name = name
      @balance = balance
    end

    def balance
      @balance
    end

    def deposit(add)
      @balance += add
    end

    def withdraw(take)
      @balance -= take
    end

    def self.create(name, balance)
      bnk = Bankaccount.new(name, balance)
      @@accounts << bnk
      return bnk
    end

    def self.accounts
      return @@accounts
    end

    def self.total_funds
      total = 0
      @@accounts.each do |account|
        total += account.balance
      end
      return total
    end

    def self.interest_time
      @@accounts.each do |account|
        account.deposit(account.balance * @@interest_rate)
      end  
    end

end
