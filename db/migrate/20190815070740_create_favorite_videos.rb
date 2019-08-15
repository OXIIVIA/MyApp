class CreateFavoriteVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_videos do |t|
      t.references :user, foreign_key: true, null: false
      t.references :video, foreign_key: true, null: false
      t.timestamps
    end
  end
end
