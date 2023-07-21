class RenameImageIdFromProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :image_id, :images
  end
end
