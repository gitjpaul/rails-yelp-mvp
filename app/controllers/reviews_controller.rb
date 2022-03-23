class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    p params_review
    @review.restaurant = @restaurant
    if @review.save
      puts "nul"
      redirect_to restaurant_path(@restaurant)
    else
      puts "test"
      render :new
    end
  end


  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def params_review
    params.require(:review).permit(:rating, :content)
  end
end
