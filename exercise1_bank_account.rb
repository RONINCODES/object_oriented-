class BankAccount

  def initialize (balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end


  def deposit(amount)
    @balance = @balance + amount
    #@balance += amount
  end


  def withdraw(withdraw_amount)
    @balance-= withdraw_amount
  end

  def gain_interest
    @balance = (@balance * @interest_rate) + @balance
  end
end
