class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
    #@bank = {: [], cats: [], dogs: []}
  end

  def deposit (amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    @balance > 0 && @status == "open" ? true : false #double equals bc a single would be assigning a variable!!!
  end


  def close_account
    self.status = "closed"
  end


end
