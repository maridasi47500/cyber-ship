json.extract! news, :id, :user_id, :title, :content, :pic, :lat, :lon, :city_id, :created_at, :updated_at
json.url news_url(news, format: :json)
