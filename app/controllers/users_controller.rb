class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.create(params[:user])
  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
