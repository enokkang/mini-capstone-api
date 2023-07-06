# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new({ name: "Sample1", price: 100, image_url: "https://avatars.githubusercontent.com/u/137811720?v=4", description: "This is a sample product." })
product.save
