class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title,      null: false
      t.string :videoID,    null: false, unique: true
      t.references :artist, foreign_key: true, null: false
      t.timestamps
    end
  end
end
