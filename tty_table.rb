require "http"
require "tty-table"

#able = TTY::Table.new(["header1", "header2"], [["a1", "a2"], ["b1", "b2"]])
#puts table.render(:ascii)

puts "One Product:"
response = HTTP.get("http://localhost:3000/one_product.json")
product = response.parse(:json)

table = TTY::Table.new(["id", "name", "price", "image_url", "description"], [[response.parse(:json)["id"], response.parse(:json)["name"], response.parse(:json)["price"], response.parse(:json)["image_url"], response.parse(:json)["description"]]])

puts table.render(:ascii, resize: true)

puts "\n\nAll Products:"
response = HTTP.get("http://localhost:3000/all_products.json")
#pp response.parse(:json)
