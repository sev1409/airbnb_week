class BookingsController < ApplicationController
  before_action :set_puppy, only: [:create]

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.puppy = @puppy
    @booking.user = current_user
    if @booking.save
      flash[:notice] = "Puppy #{@puppy.name} Booked !"
      redirect_to puppy_path(@puppy)
    else
      render plain: "ERROR"
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :puppy_id)
  end

  def set_puppy
    @puppy = Puppy.find(params[:puppy_id])
  end
end
