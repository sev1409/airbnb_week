class ReviewsController < ApplicationController
  def create
    @puppy = Puppy.find(params[:puppy_id])
    @review = Review.new(review_params)
    @review.puppy = @puppy
    if @review.save
      redirect_to puppy_path(@puppy)
    else
      render puppy_path(@puppy)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
