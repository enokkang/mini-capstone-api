class Rename < ActiveRecord::Migration[7.0]
  def change
    rename_column :carted_products, :quantity_integer, :quantity
  end
end
