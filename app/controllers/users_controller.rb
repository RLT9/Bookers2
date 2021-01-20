class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  def after_sign_in_path_for(resource)
    user_path(resource)
  end

   private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
  def edit
  end  

end
