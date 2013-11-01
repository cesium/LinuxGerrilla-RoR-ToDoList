class User < ActiveRecord::Base
  has_many :created_lists, class_name: "TaskList"

  has_many :list_users
  has_many :task_lists, through: :list_users

  validates :email, presence: true, uniqueness:true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  def age
    now = Time.now.utc.to_date
    now.year - birthday.year - (birthday.to_date.change(year: now.year) > now ? 1 : 0)
  end

  def to_s
    self.name
  end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

end
