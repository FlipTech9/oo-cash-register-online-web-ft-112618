require 'pry'
class CashRegister
  attr_accessor :total
  attr_reader :discount
  
  def initialize (discount = 0)
    @total = 0
    # binding.pry
    @discount = discount
  end
  
  def add_item (item, price, quantity = 1)
    @total = @total + price * quantity
  end 
  
  def apply_discount
    # binding.pry
    self.total = self.total * (1 - self.discount.to_f / 100)
    puts 
  end
end
