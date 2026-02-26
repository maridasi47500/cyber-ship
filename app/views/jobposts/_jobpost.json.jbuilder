json.extract! jobpost, :id, :user_id, :title, :content, :pic, :created_at, :updated_at
json.url jobpost_url(jobpost, format: :json)
