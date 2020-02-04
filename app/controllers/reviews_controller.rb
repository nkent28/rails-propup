class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.save
    redirect_to booking_path(@booking)
  end

  def edit
    @review = Review.find(params[:id])
    #check details
  end

  def update
    if @review.update(review_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end
end

  private

  def review_params
    params.require(:review).permit(:content, :title, :rating)
  end
end

