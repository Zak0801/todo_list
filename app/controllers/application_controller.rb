class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  # ユーザーがログインしていることをチェックする
  def logged_in_user?
    if logged_in?
      flash[:danger] = "You've already logged in or signed up"
      redirect_to user_url(current_user)
    end
  end

  # userがログインしていないことをチェックする
  def not_logged_in_user?
    unless logged_in?
      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
  end
end
