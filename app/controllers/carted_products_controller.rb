class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    render :show
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render :index
  end

  def destroy
    @carted_products = current_user.carted_products.find_by(id: params[:id], status: "carted")
    @carted_products.update(status: "removed")

    render json: { message: "Carted product successfully removed!" }
  end
end
