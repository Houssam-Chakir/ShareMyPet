class AnimalsController < ApplicationController
  before_action :find_animal, only: %i[:show :edit :update]
  def index
    @animals = Animal.all
  end

  def show
    @review = Review.new
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
    params.require(:animal).permit(:name, :address, :phone_number, :category)
  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end
