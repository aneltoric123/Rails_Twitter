class CreateHashtags < ActiveRecord::Migration[7.1]
  def change
    create_table :hashtags do |t|
      t.string :hashtag

      t.timestamps
    end
  end
end
