class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :productcarts, dependent: :destroy
  has_many :carts, through: :productcarts, dependent: :destroy
end
