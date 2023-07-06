require "http"

puts "One Product:"
response = HTTP.get("http://localhost:3000/one_product.json")
pp response.parse(:json)

puts "\n\nAll Products:"
response = HTTP.get("http://localhost:3000/all_products.json")
pp response.parse(:json)
