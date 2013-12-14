class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.date :date
      t.belongs_to :termb
      t.timestamps
    end
  end
end
