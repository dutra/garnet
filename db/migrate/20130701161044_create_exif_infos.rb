class CreateExifInfos < ActiveRecord::Migration
  def change
    create_table :exif_infos do |t|
      t.integer :photo_id
      t.string :camera
      t.string :shutter_speed
      t.integer :aperture
      t.string :focal_length
      t.integer :iso
      t.datetime :taken

      t.timestamps
    end
  end
end
