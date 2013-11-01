class AddOwnerIdToTaskLists < ActiveRecord::Migration
  def change
    add_reference :task_lists, :owner, index: true
  end
end
