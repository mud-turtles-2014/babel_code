class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to '/' #change this to login page
    else
      flash[:signin_error] = user.errors.full_messages
      redirect_to "/login"
    end
  end

  private

  def user_params
    params.require(:user).permit([:email, :username, :password, :password_confirmation])
  end
end
