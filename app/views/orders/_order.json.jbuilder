json.id order.id
json.user order.user
#json.product_id order.product_id
#json.quantity order.quantity
json.subtotal order.subtotal
json.tax order.tax
json.total order.total

#json.carted_products order.carted_products.map do |carted_product|
#  json.id carted_product.id
#  json.quantity carted_product.quantity
#  json.status carted_product.status
#  json.product carted_product.product
#end

json.carted_products order.carted_products, partial: "carted_products/carted_product", as: :carted_product

json.created_at order.created_at
json.updated_at order.updated_at