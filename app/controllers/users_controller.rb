class UsersController < ApplicationController
  before_action :set_user, only: :destroy

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
    redirect_to user_path(@user)
  end

  def create
    @user = user.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to user_path(@user.all), status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :photo, :photo_cache)
  end

  def set_user
    @user = user.find(params[:id])
  end
end
