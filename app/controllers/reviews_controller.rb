class ReviewsController < ApplicationController

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # POST /reviews
  # POST /reviews.json
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def review_params
    params.require(:review).permit(:comment, :rating)
    end

    # Never trust parameters from the scary internet, only allow the white list through.

end
