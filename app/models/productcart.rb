class Productcart < ApplicationRecord
  belongs_to :product
  belongs_to :cart
end