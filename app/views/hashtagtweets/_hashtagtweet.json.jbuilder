json.extract! hashtagtweet, :id, :hashtag_id, :tweet_id, :created_at, :updated_at
json.url hashtagtweet_url(hashtagtweet, format: :json)
