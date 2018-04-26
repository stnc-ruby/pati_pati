class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:user_id])
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :user_name, :location, :is_personal_confirm, :personal_confirm_date, :is_active)
  end
end
