class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      @user.update(is_personal_confirm: true)
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
    return render_json(:user_not_found, 422) unless @user
  end

  def destroy
    unless User.find_by(id: id)
    @user = User.find_by(id: id)
    @user.destroy
    message =  "User has been deleted."
    json render: { message: message }
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :device_id, :type, :is_personal_confirm, :is_active, :email)
  end
end