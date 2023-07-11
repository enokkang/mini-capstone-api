class Product < ApplicationRecord
  def is_discount?
    is_discount = false
    is_discount = true if price <= 10
    is_discount
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
