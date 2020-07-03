class SessionsController < ApplicationController
  def new
    render :layout => false
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
      reset_session
      @current_user = nil
      redirect_to '/' 
  end

  def analytics
    @total_users = User.all.count
    @most_active = User.most_active
    @least_active = User.least_active
    @newest_user = User.newest
    @oldest_user = User.oldest
    @most_followers = User.most_followers
    @least_followers = User.least_followers


    @total_communities = Community.all.count
    @most_active_community = Community.most_active
    @least_active_community = Community.least_active
    @newest_community = Community.newest
    @oldest_community = Community.oldest

    @total_posts = Post.all.count
    @newest_post = Post.newest
    @oldest_post = Post.oldest
    @longest_post = Post.longest
    @shortest_post = Post.shortest

    @total_followers = Follow.all.count


    render :analytics
  end
  
end
