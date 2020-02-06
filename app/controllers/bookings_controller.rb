class BookingsController < ApplicationController
  #before_action :set_booking, only[:show, :edit, :destroy]
  #before_action :set_prop, only[:new, :create]
  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @prop = Prop.find(params[:prop_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.prop = @prop
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = params[:booking]
    if @booking.update
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    if @booking.destroy
      redirect_to bookings_path
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_prop
    @prop = Prop.find(params[:prop_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
