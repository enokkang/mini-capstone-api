class ProductsController < ApplicationController
  def one_product
    @product = Product.find_by(id: params["id"])
    #render json: { product: @product }
    render template: "products/show"
  end

  def all_products
    @products = Product.all
    #render json: { product: @product }
    render template: "products/index"
  end
end
