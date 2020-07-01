class PostsController < ApplicationController

    before_action :current_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def show
    end

    def new
        @post = Post.new
        @communities = Community.all
    end

    def create
        @post = Post.new(post_params)
        @post.save
        byebug
        redirect_to "/posts/#{@post.id}"
        # if @post.valid?
        #   @post.save  
        #   redirect_to post_path(@post)
        # else
        #   render :new
        # end
      end

    def edit
        @communities = Community.all
    end

    def update
        @post.update(post_params)
        if @post.valid?
          @post.save  
          redirect_to post_path(@post)
        else
          render :edit
        end
      end

    def destroy
        @post.destroy
        redirect_to posts_url
    end

    def current_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit!
    end

end
