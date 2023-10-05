class Cart < ApplicationRecord
  belongs_to :user
  has_many :productcarts, dependent: :destroy
  has_many :products, through: :productcarts, dependent: :destroy
end
