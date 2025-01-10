class User < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to @user
  end
end
