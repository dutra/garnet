class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :file
      t.integer :album_id
      t.integer :album_cover_id
      t.string :title
      t.string :description
      t.boolean :carousel
      t.string :carousel_title
      t.string :carousel_description
      t.timestamps
    end
  end
end
