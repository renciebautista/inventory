class Product < ActiveRecord::Base
	belongs_to :category
	validates :name, presence: true
	# validates :sku, uniqueness: true
end