module ApplicationHelper



	def current_user
		@current_user ||= if session[:user_id]   #This checks if current user has been used before to stop inefficient database access
			User.find(session[:user_id])
		end
	end

	def logged_in?
		!!current_user  #turns it into a booleon to check if current user is true or false
	end

	def admin
		!!current_user == "Admin"
	end

	
end
