require "pry"
class CashRegister
  attr_accessor :total, :discount
  @cart = []
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    counter = quantity
    while counter != 0 
      @cart << item
      @total += price
      counter -= 1
    end
    @cart
    @total
  end
  
  def apply_discount
    discount = @discount.to_f * 0.01
    total = @total.to_f
    if @discount
      new = total - (total * discount)
      @total = new.to_i
      p "After the discount, the total comes to $#{@total}."
    else 
      p "There is no discount to apply."
    end
  end
  
  def items
    @cart.uniq
  end
  
  def void_last_transaction
    
  end
  
end
