class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_animal, only: [:create,:new,:total_price]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.animal = @animal
    @booking.total_price = ((@booking.end_time.to_time - @booking.start_time.to_time) / 3600).to_i * @animal.price_hour
    if @booking.save!
      redirect_to "/animals/:animal_id/bookings"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to animal_path(@booking.animal), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :animal_id, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_animal
    @animal = Animal.find(params[:animal_id])
  end
end
