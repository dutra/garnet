require 'csv'

namespace :db do
  desc "Fill database with messier objects"
  task members: :environment do
    create_terms
    create_members

  end
end

def create_terms
  t = Term.new
  t.title = "Spring 13"
  t.name = "sp13"
  t.save!

  t = Term.new
  t.title = "Fall 13"
  t.name = "fa13"
  t.save!

  t = Term.new
  t.title = "Summer 13"
  t.name = "su13"
  t.save!

end

def create_members
  CSV.foreach("db/data/members.csv", headers: true) do | row |
    name = row['name']
    terms = row['term']


    file = row['file']
    course = row['course']
    origin = row['origin']
    year = row['year']
    measurements = row['measurements']
    turnons = row['turnons']
    turnoffs = row['turnoffs']
    fav_activities = row['fav_activities']
    guilty_pleasures = row['guilty_pleasures']
    ambitions = row['ambitions']
    books = row['books']
    movies = row['movies']
    sports = row['sports']
    pets = row['pets']
    foods = row['foods']
    people_admire = row['people_admire']
    sexiest_city = row['sexiest_city']
    morning = row['morning']
    date_idea = row['date_idea']

    puts "Processing members #{name}"
    m = Member.new
    m.name = name
    m.origin = origin
    m.course = course
    m.year = year
    m.measurements = measurements
    m.turnons = turnons
    m.turnoffs = turnoffs
    m.fav_activities = fav_activities
    m.guilty_pleasures = guilty_pleasures
    m.ambitions = ambitions
    m.books = books
    m.movies = movies
    m.sports = sports
    m.pets = pets
    m.foods = foods
    m.people_admire = people_admire
    m.sexiest_city = sexiest_city
    m.morning = morning
    m.date_idea = date_idea

    unless file.blank?
      blob = Dir.glob(File.join(Rails.root, 'private', 'members', file)).first
      unless blob.nil?
        m.file = File.open blob
      end
    end
    m.save!


    terms.split(',').each do |term|

      t = Term.find_by_name term
      unless t.nil?
        t.members << m
        t.save!
      end
    end


  end



end
