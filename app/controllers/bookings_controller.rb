class BookingsController < ApplicationController
  before_action :set_puppy, only: [:create, :update]

  def index
    @bookings = Booking.where("user_id = ?", "#{params[:user_id]}")
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.puppy = @puppy
    @booking.user = current_user
    if @booking.save
      flash[:notice] = "Puppy #{@puppy.name} Booked !"
      redirect_to user_bookings_path(current_user)
    else
      render plain: "ERROR"
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(status: true)
    redirect_to user_bookings_path(current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :puppy_id)
  end

  def set_puppy
    @puppy = Puppy.find(params[:puppy_id])
  end
end
