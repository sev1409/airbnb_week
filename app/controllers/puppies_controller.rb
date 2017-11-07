class PuppiesController < ApplicationController
  before_action :set_puppy, only: [:show]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @puppies = Puppy.all
  end

  def show
    @booking = Booking.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_puppy
    @puppy = Puppy.find(params[:id])
  end
end
