class CommentsController < ApplicationController

  def create
   
    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
    @comment.save
    
  end

  def show
  end


private 
  def comment_params
    ret_params = params.require(:comment).permit(:email, :content, :post_id)
    ret_params[:email]=current_user.email 
    ret_params
  end

end 