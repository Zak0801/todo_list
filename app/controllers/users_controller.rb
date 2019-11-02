# Userの操作に関するコントローラ
class UsersController < ApplicationController
  before_action :logged_in_user?, only: [:new, :create]
  before_action :not_logged_in_user?, only: [:edit, :update, :show]
  before_action :current_user?, only: [:edit, :update, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = 'Profile updated'
      redirect_to user_url(@user)
    else
      render 'edit'
    end
  end

  private

  # Strong parametersについてのメソッド
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # userがcurrent_userであるのかをチェックする
  def current_user?
    # redirect_to(root_url) unless params[:id] == current_user.id
    @user = User.find(params[:id])
    redirect_to user_url(current_user) unless @user == current_user
  end
end
