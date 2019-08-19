class ChangeDataLinkToSoundcloud < ActiveRecord::Migration[5.0]
  def change
    change_column :soundclouds, :link, :text
  end
end
