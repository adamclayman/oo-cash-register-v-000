class CashRegister
  attr_accessor :total, :discount, :last_item
  ITEMS = []

  def initialize(discount = 0.0)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      ITEMS << title
    end
    p ITEMS
    self.total += price * quantity
    self.last_item = [title, price, quantity]
  end

  def apply_discount
    if self.discount == 0.0
      return "There is no discount to apply."
    else
      self.total = self.total * ((100.0 - self.discount) / 100.0)
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def self.items
    p ITEMS
    return ITEMS
  end

  def void_last_transaction
    self.total -= self.last_item[1] * self.last_item[2]
  end
end
