class Product < ApplicationRecord
  validates :price, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :image_url, presence: true
  validates :name, presence: true

  def is_discount?
    #is_discount = false
    #is_discount = true if price <= 10
    #is_discount

    #alternative way:
    price <= 10
  end

  def tax
    #price * 0.09
    (price * 0.09).round(3)
    #"tax is : #{(price * 0.09).round(3)}"
  end

  def total
    (price + tax).round(3)
  end
end
