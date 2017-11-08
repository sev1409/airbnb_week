class PuppiesController < ApplicationController
  before_action :set_puppy, only: [:show, :edit, :destroy]
  # What can the user see without logging in
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @puppies = Puppy.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@puppies) do |puppy, marker|
      marker.lat puppy.latitude
      marker.lng puppy.longitude
    end
  end

  def show
    @booking = Booking.new
    @review = Review.new
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.new(puppy_params)
    if @puppy.save
      redirect_to puppy_path(@puppy)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @puppy.update(puppy_params)
    if @puppy.save
      redirect_to puppy_path(@puppy)
    else
      render :edit
    end
  end

  def destroy
    @puppy.destroy
    redirect_to puppy_path(@puppy)
  end

  private

  def set_puppy
    @puppy = Puppy.find(params[:id])
  end

  def puppy_params
    params.require(:puppy).permit(:name, :breed, :photo, :address)
  end
end
