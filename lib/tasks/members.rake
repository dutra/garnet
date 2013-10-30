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

end

def create_members

  sp13 = Term.find_by_name("sp13")

  m = Member.new
  m.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'sample_images', 'chicao.jpg')).first)
  m.name = "Francisco Nascimento"
  m.year = 'PhD'
  m.save!

  sp13.members << m
  sp13.save!

  
  fa13 = Term.find_by_name("fa13")

  m = Member.new
  m.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'sample_images', 'dutra.jpg')).first)
  m.name = "Isaque Dutra"
  m.year = 'Junior'
  m.save!
  fa13.members << m
  sp13.members << m
  
  m = Member.new
  m.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'sample_images', 'horta.jpg')).first)
  m.name = "Victor Horta"
  m.year = 'Visiting Student'
  m.save!
  fa13.members << m

  fa13.save!
  
end
