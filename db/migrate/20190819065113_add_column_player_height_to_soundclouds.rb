class AddColumnPlayerHeightToSoundclouds < ActiveRecord::Migration[5.0]
  def change
    add_column :soundclouds, :player_height, :integer, after: :link
  end
end
