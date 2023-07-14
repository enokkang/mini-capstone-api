#json.extract! image, :id, :created_at, :updated_at
#json.url image_url(image, format: :json)

json.id image.id
json.url image.url
json.product_id image.product_id
