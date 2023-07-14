class ImagesController < ApplicationController
  def show
    @image = Image.find_by(id: params["id"])
    #render json: { product: @product }
    render template: "images/show"
  end

  def index
    @images = Image.all
    #render json: { product: @product }
    render template: "images/index"
  end

  def create
    @image = Image.new(
      url: params["url"],
      product_id: params["product_id"],

    )
    if @image.save #happy path
      render :show
    else #sad path
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @image = Image.find_by(id: params["id"])
    @image.update(
      url: params["url"] || @image.url,
      product_id: params["product_id"] || @image.product_id,
    )
    if @image.save #happy path
      render :show
    else #sad path
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @image = Image.find_by(id: params["id"])
    @image.destroy

    render json: { message: "deleted!" }
  end
end
