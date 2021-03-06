class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      message = "User saved."
      json render: { message: message }
    else
      json render: { errors: @user.errors.full_message }
    end
    redirect_to @user
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def destroy
    @user = User.find_by(id: id)
    @user.destroy
    # message =  "User has been deleted."
    # json render: { message: message }
    # puts "------"
    # puts "*******"
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
