class AnimalsController < ApplicationController
  before_action :find_animal, only: [:show, :edit, :update, :destroy]
  def index
    @animals = Animal.all

    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @animal = Animal.where(name: @name)
      redirect_to animal_path(@animal.ids)
    end

    @markers = @animals.geocoded.map do |animal|
      {
      lat: animal.latitude,
      lng: animal.longitude,
      info_window: render_to_string(partial: "info_window", locals: {animal: animal})
    }
    end
  end

  def show
    #debug
    @review = Review.new
  end

  def new
    @animal = Animal.new
  end

  def edit
  end

  def update
    if @animal.update(animal_params)
      redirect_to animal_path(@animal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    if @animal.save!
      redirect_to animal_path(@animal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @animal.destroy
    redirect_to animals_path, status: :see_other
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :specie, :category, :photo, :address, :age, :price_hour, :bio, :user_id)

  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end
