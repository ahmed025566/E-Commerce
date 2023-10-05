class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.integer :price
      t.string :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
