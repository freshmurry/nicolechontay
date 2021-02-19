class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
  end


  def show
    @user = User.find(params[:id])
    # redirect_to root_path, notice: "You don't have permission to see this profile" unless current_user == @user
    @pins = @user.pins
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :image)
  end
end