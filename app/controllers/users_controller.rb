class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @user = Booking.new
  end

  def create
    @user = Cocktail.create(user_params)
  end

  def edit
  end

  def update
    @user.update(user_params)
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:booking).permit(:password, :first_name, :last_name, :address, :bank_account, :bio, :email)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
