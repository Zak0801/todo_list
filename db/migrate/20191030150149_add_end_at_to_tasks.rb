class AddEndAtToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :end_at, :date
  end
end
