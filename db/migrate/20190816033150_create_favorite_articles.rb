class CreateFavoriteArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_articles do |t|
      t.references :user, foreign_key: true, null: false
      t.references :articles, foreign_key: true, null: false
      t.timestamps
    end
  end
end
