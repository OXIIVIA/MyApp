class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :image, null: false
      t.text :text, null: false
      t.references :artist, foreign_key: true, null: false
      t.timestamps
    end
  end
end
