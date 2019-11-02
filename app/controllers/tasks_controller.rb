# Task投稿に関するコントローラー
class TasksController < ApplicationController
  before_action :not_logged_in_user?, only: [:new, :create, :destroy]

  def new; end

  def create; end

  def destroy; end
end
