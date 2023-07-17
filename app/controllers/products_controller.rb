class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
    #render json: { product: @product }
    render :show
  end

  def index
    @products = Product.all
    #render json: { product: @product }
    render :index
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
      quantity: params[:quantity],

    )
    if @product.save #happy path
      render :show
    else #sad path
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      supplier_id: params[:supplier_id] || @product.supplier_id,
      quantity: params[:quantity] || @product.quantity,
    )
    if @product.save #happy path
      render :show
    else #sad path
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    render json: { message: "deleted!" }
  end
end
