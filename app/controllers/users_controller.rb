class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  def base_collection
    @users = User.select(:id, :username, :password, :email, :first_name, :last_name, :title)
    render json: @users
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :email, :first_name, :last_name, :title)
  end
end

