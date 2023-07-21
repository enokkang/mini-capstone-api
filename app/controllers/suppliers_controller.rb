class SuppliersController < ApplicationController
  def all_suppliers
    @suppliers = Supplier.all
    render :index
  end

  def create
    @supplier = Supplier.create(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
    )
    if @supplier.save
      render :show
    else
      render json: { errors: @supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.update(
      name: params["name"] || @supplier.name,
      email: params["email"] || supplier.email,
      phone_number: params["phone_number"] || supplier.phone_number,
    )
    if @supplier.save
      render :show
    else
      render json: { errors: @supplier.errors.full_messages }, status: 422
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params["id"])
    supplier.destroy
    render json: { message: "Deleted!" }
  end
end
