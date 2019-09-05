class CashRegister
  attr_accessor :total, :discount
  CART = {}
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
  end
  
  def add_item(title, price)
    CART[item] = price
    @total += price
  end
  
end
