class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :description
      t.string :location
      t.belongs_to :event
      t.date :date
      t.timestamps
    end
  end
end
