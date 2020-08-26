class RestaurantsController < ApplicationController
  
  # read
  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # create
  def new
    @restaurant = Restaurant.new
  end
  
  def create
       # strong_params = params.require(:name_of_model).permit(:attributes)
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      # Redirect to the show page
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

  def strong_params
    return params.require(:restaurant).permit(:name, :category, :address, :phone_number)
  end
end
