class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  @@all = []

  def self.all
    @@all
  end

  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @total = @total + @quantity * @price
  end

  def apply_discount
    if self.discount == nil
      @total = @total - (@total * @discount/100)
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @@all << self.title * @quantity
  end

  def void_last_transaction
    @total = @total - @quantity * @price
  end


end
