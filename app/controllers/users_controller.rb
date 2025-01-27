class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :postal_code, :prefecture, :address, :email, :credit_card, :user_type, :team_name, :password, :password_confirmation)
  end
end
