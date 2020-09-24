class ReviewsController < ApplicationController
  before_action :set_review, only: [ :show, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show 
  end

  def new
    #if logged_in?
      #@review = Review.new
      @review = Review.new(car_id: params[:id], 
                                name: User.find(session[:user_id]).username)
      session[:return_to] = nil
    #else
     # session[:return_to] = request.url
     # redirect_to login_path, alert: "You need to login to write a review"
   # end
   end




  # GET /reviews/1/edit
  def edit
       @review = Review.find(params[:id])
  end





  def create
    @review = Review.new(review_params)
    if @review.save
        user = User.find(session[:user_id])
        redirect_to user, notice: 'Your review was successfully added.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @reviews.destroy
      redirect_to reviews_url
    end


  def displays
    car = Car.find(params[:id])
    @review = car.reviews
    if @review.empty?

      redirect_to car, notice: "This car has not been reviewed yet..."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:review_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:car_id, :name, :review_text, :no_of_stars)
    end
end
