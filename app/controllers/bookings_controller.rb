class BookingsController < ApplicationController
  before_action :set_puppy, only: [:create, :update]

  def index
    # recupere les bookings qui m'appartiennent
    @my_bookings = Booking.where("user_id = ?", current_user.id)
    # recuperer les bookings pour un chien qui m'appartient
    @bookings = Booking.joins(:puppy).where('puppies.user_id = ?', current_user.id)
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
