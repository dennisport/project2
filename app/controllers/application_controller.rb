class ApplicationController < ActionController::Base
    before_action :authorized?
    helper_method :logged_in?
    helper_method :current_user
    before_action :session_user

   def authorized?
    end

   def logout
      session[:user_id] = nil
    end
  end

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def session_user
    @user_id = session[:user_id]
    @logged_in = !!@user_id
    if @logged_in
       @current_user = User.find(@user_id)
    end
 end