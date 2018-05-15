class UsersController < ApplicationController

  def show
    @user = User.find_by name: params[:name]
  end

  private
  def users_params
    params.require(:post).permit(:avatar)
  end

end
