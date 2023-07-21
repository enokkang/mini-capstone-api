class Image < ApplicationRecord
  validates :url, presence: true

  has_one :product

  # def products
  #   Product.where(image_id: id)
  # end
end