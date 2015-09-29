class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :category
      t.string :name
      t.string :price
      t.string :thumbnail
      t.string :image
      t.text :detail

      t.timestamps null: false
    end
  end
end
