class Image < ApplicationRecord
  belongs_to :product
  # def images
  #  Image.where(product_id: product_id)
  #end
end
