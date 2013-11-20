class CreateTermsAndMembers < ActiveRecord::Migration
  def change

    create_table :members do |t|
      t.string :name
      t.string :year
      t.string :email
      t.string :course
      t.string :origin
      
      t.string :measurements
      t.string :turnons
      t.string :turnoffs
      t.string :fav_activities
      t.string :guilty_pleasures
      t.string :ambitions
      t.string :books
      t.string :movies
      t.string :sports
      t.string :pets
      t.string :foods
      t.string :sexiest_city
      t.string :morning
      t.string :date_idea
      t.string :people_admire
      
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
