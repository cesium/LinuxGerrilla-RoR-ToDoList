json.array!(@list_users) do |list_user|
  json.extract! list_user, :task_list_id, :user_id
  json.url list_user_url(list_user, format: :json)
end
