class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @puppy = Puppy.new
  end
end
