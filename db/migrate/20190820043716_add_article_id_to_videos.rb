class AddArticleIdToVideos < ActiveRecord::Migration[5.0]
  def change
    change_column :videos, :article_id, :integer, after: :artist_id
  end
end
