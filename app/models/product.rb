class Product < ActiveRecord::Base
	validates :sku, :name, presence: true
	validates :sku, uniqueness: true
end
