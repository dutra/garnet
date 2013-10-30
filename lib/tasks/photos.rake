namespace :db do
  desc "Fill database with messier objects"
  task albums: :environment do

    create_albums
    create_photos
    
  end
end

def create_albums

  blizzard = Album.new
  blizzard.title = "Blizzard"
  blizzard.location = "Boston"
  blizzard.save!

  dinner = Album.new
  dinner.title = "Dinner"
  dinner.location = "Boston"
  dinner.save!

  party = Album.new
  party.title = "Parallel Universe"
  party.location = "Boston"
  party.save!
  
end



def create_photos
  
  p = Album.find(1).photos.new
  p.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'sample_images', 'blizzard.jpg')).first)
  p.title = "Blizzard"
  p.album_cover_id = 1
  p.save!

  p = Album.find(2).photos.new
  p.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'sample_images', 'dinner1.jpg')).first)
  p.title = "Dinner 1"
  p.album_cover_id = 2
  p.save!

  p = Album.find(2).photos.new
  p.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'sample_images', 'dinner2.jpg')).first)
  p.title = "Dinner 2"
  p.save!

  p = Album.find(3).photos.new
  p.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'sample_images', 'party.jpg')).first)
  p.title = "Parallel Universe"
  p.album_cover_id = 3
  p.save!

  
                     
  
end
