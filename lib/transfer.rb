require 'pry'
class Transfer

  attr_accessor :name, :transfer, :amount, :status

  def initialize(name, transfer, amount)
    @name = name
    @transfer = transfer
    @amount = amount
    @status = "pending"
  end  
  
end


