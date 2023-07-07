class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params["id"])
    #render json: { product: @product }
    render template: "products/show"
  end

  def index
    @products = Product.all
    #render json: { product: @product }
    render template: "products/index"
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    render :show
  end
end
