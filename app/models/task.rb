# Taskに関するコントローラー
class Task < ApplicationRecord
  belongs_to :user
end
