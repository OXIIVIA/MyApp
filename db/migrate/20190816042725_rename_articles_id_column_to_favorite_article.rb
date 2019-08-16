class RenameArticlesIdColumnToFavoriteArticle < ActiveRecord::Migration[5.0]
  def change
    rename_column :favorite_articles, :articles_id, :article_id
  end
end
