class UsersController < ApplicationController

  def show
    @user = User.find_by name: params[:name]
  end

  private
  def user_params
    params.require(:user).permit(:avatar)
  end

end
