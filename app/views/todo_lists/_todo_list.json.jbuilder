json.extract! todo_list, :id, :date, :item, :status, :userid, :user_id, :created_at, :updated_at
json.url todo_list_url(todo_list, format: :json)
