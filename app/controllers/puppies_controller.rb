class PuppiesController < ApplicationController
  before_action :set_puppy, only: [:show, :edit, :destroy]
  # What can the user see without logging in
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @puppies = Puppy.where(breed: params[:query])
  end

  def show
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
    params.require(:puppy).permit(:name, :breed, :photo)
  end
end
