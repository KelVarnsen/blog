class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


  private 
    def user_params 
      usr_params = params.require(:user).permit(:email, :created_at)
      usr_params
    end
end
