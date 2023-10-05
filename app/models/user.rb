# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_one :cart

  validates_presence_of :email
  validates_presence_of :email
  validates_uniqueness_of :email
end
