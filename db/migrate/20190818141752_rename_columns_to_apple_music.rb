class RenameColumnsToAppleMusic < ActiveRecord::Migration[5.0]
  def change
    rename_column :apple_musics, :articles_id, :article_id
    rename_column :apple_musics, :artists_id, :artist_id
  end
end
