class CreateHashtagTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :hashtag_tweets do |t|
      t.references :tweet, null: false, foreign_key: true
      t.references :hashtag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
