class CreateHashtagtweets < ActiveRecord::Migration[7.1]
  def change
    create_table :hashtagtweets do |t|
      t.references :hashtag, null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
