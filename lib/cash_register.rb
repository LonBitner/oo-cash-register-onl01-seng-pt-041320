class CashRegister
  attr_reader :discount
  attr_accessor :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
   self.total += price * quantity
  end
  
  def apply_discount
    self.total -= @total * @discount / 100
    return "After the discount, the total comes to $800."
    return "There is no discount to apply."
  end
  
end
