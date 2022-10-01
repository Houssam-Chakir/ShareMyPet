class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @review = Review.new(review_params)
    @review.animal = @animal
    if @review.save
      redirect_to animal_path(@animal)
    else
      render "animals/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to list_path(@review.list)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
