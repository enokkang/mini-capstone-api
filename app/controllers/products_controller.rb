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
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      quantity: params["quantity"],
      supplier_id: params["supplier_id"],
    )
    if @product.save #happy path
      render :show
    else #sad path
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      image_url: params["image_url"] || @product.image_url,
      description: params["description"] || @product.description,
      quantity: params["quantity"] || @product.quantity,
      supplier_id: params["supplier_id"] || @product.supplier_id,
    )
    if @product.save #happy path
      render :show
    else #sad path
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy

    render json: { message: "deleted!" }
  end
end
