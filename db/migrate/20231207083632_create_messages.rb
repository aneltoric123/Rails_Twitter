class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.references :sender, null: false, foreign_key: { to_table: :users}
      t.references :receiver, null: false, foreign_key: { to_table: :users}
      t.references :conversation, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end