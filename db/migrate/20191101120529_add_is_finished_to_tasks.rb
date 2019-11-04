# is_finishedカラムの追加
class AddIsFinishedToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :is_finished, :boolean, default: false, null: false
  end
end
