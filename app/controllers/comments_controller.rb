class CommentsController < ApplicationController

  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def show
  end


private 
  def comment_params
    params.require(:comment).permit(:email, :body, :post_id)
  end

end
