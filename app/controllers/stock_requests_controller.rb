class StockRequestsController < ApplicationController
	def index
		@requests = StockRequest.all
	end
end
