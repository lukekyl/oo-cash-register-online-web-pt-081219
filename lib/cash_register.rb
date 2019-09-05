class CashRegister
  attr_accessor :total, :discount
  CART = {}
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    counter = quantity
    while counter != 0 
      CART[item] = price
      @total += price
      counter -= 1
    end
    CART
    @total
  end
  
  def apply_discount
    discount = @discount.to_f
    total = @total
    if !@discount.nil?
      new = total * @discount.to_f
      @total = new
    end
    @total
    puts "After the discount, the total comes to $#{@total}."
  end
  
end
