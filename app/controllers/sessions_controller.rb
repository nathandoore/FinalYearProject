class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(email: params[:session][:email].downcase) #DOWNCASE EMAIL INPUT
		if user && user.authenticate(params[:session][:password]) #Also checking if password matches
			session[:user_id] = user.id #creates an object to ID the session
			if user.total == 1
				flash[:notice] = "You have a new hire request. See in 'My Listed cars'"
				redirect_to user
			else
			flash[:notice] = "Logged in successfully"
			redirect_to user
		end 
		else 
			flash.now[:alert] = "There was something wrong with your login credentials"
			render 'new' 
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "Logged out successfully"
		redirect_to root_path
	end

end