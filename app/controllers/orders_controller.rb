class OrdersController < ApplicationController
  def create
    carted_products = current_user.carted_products.where(status: "carted")

    calcuated_subtotal = 0
    carted_products.each do |carted_product|
      calcuated_subtotal += carted_product.product.price * carted_product.quantity
    end

    calculated_tax = calcuated_subtotal * 0.09
    calcuated_total = calcuated_subtotal + calculated_tax

    @order = Order.create(
      user_id: current_user.id,
      subtotal: calcuated_subtotal,
      tax: calculated_tax,
      total: calcuated_total,
    )
    if @order.save
      carted_products.update_all(status: "purchased", order_id: @order.id)
      render :show
    else
      render json: { message: "User must sign in!" }, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = Order.all
    render :index
  end
end
