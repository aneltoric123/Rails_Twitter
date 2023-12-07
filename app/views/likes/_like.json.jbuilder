json.extract! like, :id, :user_id, :tweet_id, :like_number, :created_at, :updated_at
json.url like_url(like, format: :json)
