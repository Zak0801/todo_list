# Userの操作に関するコントローラ
class UsersController < ApplicationController
  def new
    @user = User.new
  end
end
