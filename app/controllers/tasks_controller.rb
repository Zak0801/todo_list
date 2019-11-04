# Task投稿に関するコントローラー
class TasksController < ApplicationController
  before_action :not_logged_in_user?, only: [:new, :create, :destroy]

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(micropost_params)
    if @task.save
      redirect_to current_user
    else
      render new_task_path
    end
  end

  def destroy; end

  private

  def micropost_params
    params.require(:task).permit(:content, :end_at, :is_finished)
  end
end
