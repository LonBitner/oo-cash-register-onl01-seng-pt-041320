class CashRegister
  attr_reader :discount
  attr_accessor :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(item, price, quantity = 1)
   self.total += price * quantity
  end
  
  def apply_discount
    if @discount == 0
        return "There is no discount to apply."
    end
    self.total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end
  
  def items
    item_names = []
    @cart.each do | item_info |
      for qty in 1..item_info[:quantity]
        item_names << item_info[:name]
      end
    end
    item_names
  end
end
