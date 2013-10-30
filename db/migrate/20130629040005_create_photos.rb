class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :file
      t.integer :album_id
      t.integer :album_cover_id
      t.string :title
      t.string :description
      t.string :camera
      t.string :lens
      t.timestamps
    end
  end
end
