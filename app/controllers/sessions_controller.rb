class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])

    if @user
      session[:id] = @user.id
      redirect_to '/'
    else
      flash[:error] = "Login failed, please try again."
      redirect_to '/login'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
