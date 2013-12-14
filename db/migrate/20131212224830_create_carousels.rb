class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :title
      t.string :description
      t.belongs_to :album
      t.belongs_to :event
      t.timestamps
    end
  end
end
