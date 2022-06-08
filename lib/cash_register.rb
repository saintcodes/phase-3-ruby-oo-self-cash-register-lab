class CashRegister

  attr_accessor :total, :discount, :title, :quantity, :items, :last_transaction
  attr_reader :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    self.last_transaction = price*quantity
    self.total += self.last_transaction
    
    quantity.times do
      items << title
    end 
  end

  def apply_discount
    if discount != 0
      new_total = ((self.total * self.discount) / 100)
      self.total -= new_total
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
  end

end