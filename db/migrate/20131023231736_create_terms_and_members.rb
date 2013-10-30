class CreateTermsAndMembers < ActiveRecord::Migration
  def change

    create_table :members do |t|
      t.string :name
      t.string :year

      t.timestamps
    end

    create_table :terms do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
    
    create_table :members_terms do |t|
      t.belongs_to :member
      t.belongs_to :term
    end

  end
end
