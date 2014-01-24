namespace :db do
  desc "Fill database with term objects"
  task terms: :environment do

    create_terms

  end
end

def create_terms

  CSV.foreach("db/data/terms.csv", headers: true) do | row |
    title = row['title']
    name = row['name']

    puts "Processing term #{title}"
    p = Term.new
    p.title = title
    p.name = name
    p.save!

  end

end
