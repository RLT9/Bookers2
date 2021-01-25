class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end
  
  def index
   @user = current_user
   @users= User.all
   @book = Book.new
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
    redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def after_sign_in_path_for(resource)
    user_path(resource)
  end
  
  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user)
    end
  end


   private

  def user_params
    params.require(:user).permit(:name,:profile_image,:introduction)
  end

end