class AddColumnToFolio < ActiveRecord::Migration
  def change
    add_column :folios, :image_url, :string
  end
end
