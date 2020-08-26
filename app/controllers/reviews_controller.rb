class ReviewsController < ApplicationController
  def new
    @review = Restaurant.new
  end
  
  def create
       # strong_params = params.require(:name_of_model).permit(:attributes)
       @review = Review.new(strong_params)
       restaurant = Restaurant.find(params[:restaurant_id])
       @review.restaurant_id = restaurant.id
    if @review.save
      # Redirect to the show page
      redirect_to restaurants_path
    else
      render :new
    end
  end

    def strong_params
    return params.require(:review).permit(:content, :rating)
  end
end
