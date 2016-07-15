class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer  :user_id, null: false
      t.integer  :deck_id, null: false
      t.integer  :rounds_played, null: false
      t.integer  :answered_correctly_first_round, null: false

      t.timestamps null: false
    end
    add_index :stats, :user_id
    add_index :stats, :deck_id
  end
end
