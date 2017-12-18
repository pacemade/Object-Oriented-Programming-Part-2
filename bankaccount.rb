class Bankaccount

    @@interest_rate = 5
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
      @@accounts[1].balance + @@accounts[0].balance
      # @@accounts[1] each do |balance|
      #   total += balance
      # end
    end

end
