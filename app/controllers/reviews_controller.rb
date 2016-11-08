class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review = Review.update(review_params)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :reviewer_id, :reviewee_id)
  end

end
