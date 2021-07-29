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
    if valid? && @sender.balance > @amount && @status == pending
    end  
  end 

  
end


