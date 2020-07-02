class ApplicationController < ActionController::Base
    before_action :authorized?
    helper_method :logged_in?


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