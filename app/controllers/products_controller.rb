class ProductsController < ApplicationController
  def one_product
    @product = Product.first
    #render json: { product: @product }
    render template: "products/show"
  end

  def all_products
    @products = Product.all
    #render json: { product: @product }
    render template: "products/index"
  end
end
