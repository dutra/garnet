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

  ice = Album.new
  ice.title = "Ice Skating"
  ice.location = "Boston"
  ice.save!

end



def create_photos

  blizzard = Dir.glob(File.join(Rails.root, 'private', 'albums', 'blizzard', '*')).sort
  blizzard.each do |file|
    puts file
    p = Album.find_by_title("Blizzard").photos.new
    p.file = File.open(file)
    p.title = "Blizzard"
    p.save!

  end
  cover = Album.find_by_title("Blizzard").photos.first
  cover.album_cover_id = Album.find_by_title("Blizzard").id
  cover.save!

  ice = Dir.glob(File.join(Rails.root, 'private', 'albums', 'ice_skating', '*')).sort
  ice.each do |file|
    puts file
    p = Album.find_by_title("Ice Skating").photos.new
    p.file = File.open(file)
    p.title = "Ice Skating"
    p.save!

  end
  cover = Album.find_by_title("Ice Skating").photos.first
  cover.album_cover_id = Album.find_by_title("Ice Skating").id
  cover.save!


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
