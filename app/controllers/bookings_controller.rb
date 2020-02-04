class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show

  end

  def new
    @prop = Find(params[:prop_id])
    @booking = Booking.new
  end

  def create

    @booking = Booking.new(booking_params)
    @booking.create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_prop
    @booking = Booking.find(params[:id])
  end
end
