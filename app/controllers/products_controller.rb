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
end
