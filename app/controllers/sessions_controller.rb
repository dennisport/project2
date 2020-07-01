class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "Logged in!"
    else
      flash.now[:alert] = "Username or password is invalid"
      render "new"
    end
  end

  def destroy
    session.delete :user_id
      redirect_to '/' 
  end
  
end
