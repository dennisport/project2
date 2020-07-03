class CommentsController < ApplicationController

def create
    @comment = Comment.create(comment_params)
    @posts = Post.All 
    redirect_to user_path(@comment.post.user)
end

def new
    @comment = Comment.new
    @posts = Post.all
end

def edit
end

def update
    @comment.update
end

def destroy
    @comment.destroy
end

private 

def find_comment
    @comment = Comment.find(params[:id])
end

def current_params
    params.permit(:user_id, :post_id, :content)
end

end
