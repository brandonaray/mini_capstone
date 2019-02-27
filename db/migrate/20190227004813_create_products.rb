class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :artist
      t.string :year
      t.string :label
      t.string :tracks
      t.integer :price
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
