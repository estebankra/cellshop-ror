class Product < ApplicationRecord
  belongs_to :model
  belongs_to :memory
  belongs_to :color
  belongs_to :storage

  has_many :cart
  has_many :order_detail
end
