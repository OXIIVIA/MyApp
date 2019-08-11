class CreateFollowUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :follow_users do |t|
      t.references :user, foreign_key: true, null: false
      t.references :artist, foreign_key: true, null: false
      t.timestamps
    end
  end
end
