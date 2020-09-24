class CarsController < ApplicationController
#before_action :require_login
before_action :set_car, only: [:edit, :update, :show, :destroy, :rent, :offhire, :rentpage, :reactivate, :deactive, :accept]







def index
	@car = Car.paginate(page: params[:page], per_page: 5) #PAGINATION
end
def new
	@car = Car.new 
end
def edit
end

def create
# render plain: params[:car].inspect
@car = Car.new(car_params)
@car.user = User.find(session[:user_id]) #CONTROLS WHO OWNS THE CAR!!
@car.renter_id = 1   #
@car.status = "true"
@car.rentcount = 0
	if @car.save
		flash[:notice] = "Car was successfully created"
		redirect_to car_path(@car)
	else
		render 'new'
	end
end

def update
	if @car.update(car_params)
		if @car.renter_id > 1
			flash[:notice] = "Hired successfully! Check 'My Hire Cars' to see collection details'"
		redirect_to car_path(@car)
		else
		flash[:notice] = "Car Updated successfully"
		redirect_to car_path(@car)
	end
	else
		render 'edit'
	end
end

def show
	#@car.user_id_rent = User.find(session[:user_id]) 
end
def rent
	@user = User.find(session[:user_id])
	@car.renter_id = @user.renter_id
	@user = @car.user
	@user.total = 1
	@user.save
	
    @car.save
end
def accept
	@car.status = "true"
	@user = User.find(session[:user_id])
	@user.total = 0
	@user.save
	@car.save
end

def destroy
	if @car.renter_id == 1
	@car.destroy
	redirect_to cars_path
    else
    flash[:error] = "Car Is On Rent, you can not delete until offhire"
    redirect_to car_path(@car)
end
end

def users
	@car = Car.all 
end
def listing
	@car = Car.all 
end
def reactivate
	@car.status = "true"
	@car.save
end
def deactive
	@car.status = "false"
	@car.save

end
def rentpage

end

def rented
	@car = Car.all
end

def offhire
	@user = User.find(session[:user_id])
	@user.total = 0
	@user.save
	 @car.renter_id = 1	#Stores renter_id back to admin ID
     @car.save
end

def history
	@car = Car.all 
end

private




def set_car
 @car = Car.find(params[:id])
end

def car_params
	params.require(:car).permit(:status, :manufacturer, :model, :fuel, :colour, :engine, :description, :year, :price, :pickup, :postcode, :img_url, :hirestart, :hirefinish, :doors, :transmission, :passengers, :bootspace)
	end
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end


end
