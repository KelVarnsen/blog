class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to @post, notice: 'post created'
    else
      render action: 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url
  end

  private 
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
     ret_params = params.require(:post).permit(:name, :title, :content, :user_id)
     ret_params['user_id']= current_user.id
     ret_params
    end

end
