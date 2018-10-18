class Product < ApplicationRecord
	belongs_to :model
	belongs_to :memory
	belongs_to :color
	belongs_to :storage

	has_many :cart
	has_many :order_detail

	has_attached_file :image, styles: { medium: "600x300", thumb: "300x150", mini: "200x100" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
