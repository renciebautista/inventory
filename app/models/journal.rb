class Journal < ActiveRecord::Base
	after_save :update_stocks
  belongs_to :location
  belongs_to :product
  belongs_to :journal_type

  private

  def update_stocks
  	stock = Stock.where("location_id =? and product_id = ?",self.location_id, self.product_id).first
  	if stock 
  		if self.journal_type.effect == 1
  			stock.qty += self.qty
  		end

  		if self.journal_type.effect == 2
  			stock.qty -= self.qty
  		end
  		
  		stock.save
  	else
  		Stock.create(location_id: self.location_id, product_id: self.product_id, qty: self.qty)
  	end
  end
end
