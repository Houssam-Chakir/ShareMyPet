class AnimalsController < ApplicationController
  before_action :find_animal, only: [:show, :edit, :update, :destroy]
  def index
    @animals = Animal.all

    @markers = @animals.geocoded.map do |animal|
      {
      lat: animal.latitude,
      lng: animal.longitude
    }
    end
  end

  def show
    #debug
  end

  def new
    @animal = Animal.new
  end

  def edit
  end

  def update
    @animal.update(params[:animal]) # Will raise
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
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
    params.require(:animal).permit(:name, :specie, :category, :price_hour, :bio, :user)
  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end
