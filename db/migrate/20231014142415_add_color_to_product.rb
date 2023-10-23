# frozen_string_literal: true

class AddColorToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :color, :string
  end
end
