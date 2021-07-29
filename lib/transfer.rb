require 'pry'
class Transfer

  attr_accessor :receiver, :amount, :status, :sender

  def initialize(sender, receiver, amount)
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @sender = sender
  end  

  def valid?
    sender.valid? && receiver.valid?
  end  

  def execute_transaction
    if valid? && @sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount  
      @receiver.deposit(@amount)
      @status = "complete"
    else
     @status = "rejected" 
      "Transaction rejected. Please check your account balance."
    end   
  end 

  def reverse_transfer
    if valid? && receiver.balance > amount && self.status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      self.status = "reversed"
    end
  end


  
end


