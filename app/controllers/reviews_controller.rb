class ReviewsController < ApplicationController

  # GET /reviews/new
  def new
    @review = Review.new
  end


  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.save
    
    render :success
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to list_path(@review.list)
  end

  private

    def review_params
    params.require(:review).permit(:comment, :rating)
    end


end
