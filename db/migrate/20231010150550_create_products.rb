# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :shortDescription
      t.string :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
