class UsersController < ApplicationController
  before_action :set_user, only: :destroy
  before_action :set_animal

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to booking_path(@booking)
  end

  def create
    @booking = booking.new(booking_params)
    @booking.animal = @animal
    if @booking.save
      redirect_to animal_path(@animal)
    else
      @review = Review.new
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to animal_path(@booking.animal), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :animal_id, :user_id, :review_id)
  end

  def set_booking
    @booking = booking.find(params[:id])
  end

  def set_animal
    @animal = Animal.find(params[:animal_id])
  end
end


end
