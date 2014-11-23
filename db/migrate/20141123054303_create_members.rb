class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.text :introduction
      t.string :email
      t.string :blog
      t.string :image_url

      t.timestamps
    end
  end
end
