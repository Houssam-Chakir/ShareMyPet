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
    params.require(:animal).permit(:name, :specie, :category, :photo, :adress, :price_hour, :bio, :user)

  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end
