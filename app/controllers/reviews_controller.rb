class ReviewsController < ApplicationController
  def show
    @booking = Booking.find(params[:order_id])
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to bookings_path(@booking)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    if @review.update(review_params)
      redirect_to bookings_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
