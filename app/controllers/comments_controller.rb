class CommentsController < ApplicationController
    before_action :find_commentable

    def new
      @comment = Comment.new
    end

    def create
        @comment = @commentable.comments.new(comment_params)
        @comment.update_attributes(user_id: session[:user_id])
        @commentable.save
      end

    private

    def comment_params
      params.require(:comment).permit!
    end

    def find_commentable
        @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
        @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
    end

end