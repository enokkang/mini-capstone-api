class ChangeurlToImages < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :url, :images
  end
end
