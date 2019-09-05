require "pry"
class CashRegister
  attr_accessor :total, :discount
  @@cart = {}
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    counter = quantity
    while counter != 0 
      @@cart[item] = price
      @total += price
      counter -= 1
    end
    @@cart
    @total
  end
  
  def apply_discount
    discount = @discount.to_f
    total = @total.to_f
    if @discount
      new = total / discount * 100
      @total = new
      puts "After the discount, the total comes to $#{@total}."
    else 
      puts "There was no discount to apply."
    end
  end
  
end
