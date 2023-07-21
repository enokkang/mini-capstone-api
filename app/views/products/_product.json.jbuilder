#json.extract! product, :id, :created_at, :updated_at
#json.url product_url(product, format: :json)

json.id product.id
json.name product.name
json.image product.image
json.price product.price
json.is_discounted? product.is_discounted?
json.tax product.tax
json.total product.total
json.description product.description
json.supplier product.supplier
json.created_at product.created_at
json.updated_at product.updated_at

#json.extract! product, :id, :name, :price, :image_url, :description
#shortcut!
