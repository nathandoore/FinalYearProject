class HomesController < ActionController::Base

	layout 'application'

	
	def index
		@car = Car.paginate(page: params[:page], per_page: 3) #PAGINATION
	end

	def aboutus

	end

end