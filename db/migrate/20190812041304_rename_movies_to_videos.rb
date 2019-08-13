class RenameMoviesToVideos < ActiveRecord::Migration[5.0]
  def change
    rename_table :movies, :videos
  end
end
