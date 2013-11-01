class TaskList < ActiveRecord::Base
  has_many :tasks
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"

  has_many :list_users
  has_many :users, through: :list_users

  def to_s
    self.name
  end
end
