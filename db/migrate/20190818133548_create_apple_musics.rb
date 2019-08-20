class CreateAppleMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :apple_musics do |t|
      t.string :title,  null: false
      t.string :link, null: false, unique: true
      t.references :artists, foreign_key: true, null: false
      t.references :articles, foreign_key: true, null: false
      t.timestamps
    end
  end
end
