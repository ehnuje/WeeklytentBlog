class CreateFolios < ActiveRecord::Migration
  def change
    create_table :folios do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
