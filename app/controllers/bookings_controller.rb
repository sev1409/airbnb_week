class BookingsController < ApplicationController
  before_action :set_puppy

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.puppy = @puppy
    @booking.save!
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :puppy_id)
  end

  def set_puppy
    @booking = Booking.find(params[:puppy_id])
  end
end
