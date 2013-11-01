class ListUser < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :user
end
