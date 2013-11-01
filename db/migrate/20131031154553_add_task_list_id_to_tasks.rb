class AddTaskListIdToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :task_list, index: true
  end
end
