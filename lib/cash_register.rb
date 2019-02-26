require 'pry'
class CashRegister
  attr_accessor :total,:title, :discount, :items, :last_transaction
  
  def initialize(discount=0, total=0)
    @total = total
    @discount = discount
    @items = []
    @last_transaction = last_transaction
  end

  def add_item(title, price, quantity=1)
    @title = title
    self.total += price*quantity
    quantity.times do
      @items << title
    end
    binding.pry
    @last_transaction = price*quantity
      
  end 
  
  def apply_discount
  
    if @discount == 0 
      "There is no discount to apply."
    else
      @total = @total * (100 - @discount) / 100
     "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction()
    @total = @total-@last_transaction
  
end
end 
