class BookingsController < ApplicationController
  before_action :set_puppy
  before_action :authenticate_user!

  def show
  end

  def create
    render plain: "Puppy booked"
    # @booking = Booking.new(booking_params)
    # @booking.puppy = @puppy
    # if @booking.save
    #   redirect_to puppies_path
    # end
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
