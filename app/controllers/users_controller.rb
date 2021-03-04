class UsersController < ApplicationController
  def index
    @users = User.order(id: :desc).page(params[:page]).per(25)
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
  end
end
