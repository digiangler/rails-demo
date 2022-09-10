json.extract! weight_history, :id, :user_id, :weight, :memo, :created_at, :updated_at
json.url weight_history_url(weight_history, format: :json)
