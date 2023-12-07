json.extract! retweet, :id, :user_id, :tweet_id, :retweet_number, :created_at, :updated_at
json.url retweet_url(retweet, format: :json)
