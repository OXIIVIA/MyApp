class CreateSoundclouds < ActiveRecord::Migration[5.0]
  def change
    create_table :soundclouds do |t|
      t.string :title,  null: false
      t.string :link, null: false, unique: true
      t.references :artist, foreign_key: true, null: false
      t.references :article, foreign_key: true, null: false
      t.timestamps
    end
  end
end
