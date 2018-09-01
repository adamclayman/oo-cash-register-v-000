class CashRegister
  attr_accessor :total, :discount
  ITEMS = []

  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    ITEMS << title * quantity
    self.total += price
  end

  def items
    ITEMS
  end
end
