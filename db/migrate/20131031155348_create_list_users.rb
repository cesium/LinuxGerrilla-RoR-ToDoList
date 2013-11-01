class CreateListUsers < ActiveRecord::Migration
  def change
    create_table :list_users do |t|
      t.references :task_list, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
