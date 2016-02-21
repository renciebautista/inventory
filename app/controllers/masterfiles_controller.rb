class MasterfilesController < ApplicationController
	def index

	end

	def import
		import = Masterfile.new
		import.parse(params[:file])
  	redirect_to categories_path, notice: "Masterfile imported."
	end
end
