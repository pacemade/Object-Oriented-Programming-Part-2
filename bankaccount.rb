class Bankaccount

    @@interest_rate = 5
    @@accounts = []

    def initialize
      @balance = 0
    end

    def deposit(add)
      @balance += add
    end

    def withdraw(take)
      @balance -= take
    end

    def self.create(name)
      Bankaccount.new
      @@accounts << name
    end

    def self.accounts
      return @@accounts
    end


end
