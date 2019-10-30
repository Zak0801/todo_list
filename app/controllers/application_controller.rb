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
end
