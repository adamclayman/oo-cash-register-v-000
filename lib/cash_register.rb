class CashRegister
  attr_accessor :total, :discount, :last_item
  ITEMS = []

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    ITEMS << %w(title) * quantity
    self.total += price * quantity
    self.last_item = [title, price, quantity]
  end

  def items
    ITEMS
  end

  def void_last_transaction
    
  end
end
