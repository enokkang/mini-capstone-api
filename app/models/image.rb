class Image < ApplicationRecord
  def image_url
    Image.where(product_id: product_id)
  end
end
