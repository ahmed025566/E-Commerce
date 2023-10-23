# frozen_string_literal: true

class CreateProductcarts < ActiveRecord::Migration[7.0]
  def change
    create_table :productcarts do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
