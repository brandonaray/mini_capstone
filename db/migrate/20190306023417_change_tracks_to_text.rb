class ChangeTracksToText < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :tracks, :text   
  end
end
