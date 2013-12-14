namespace :db do
  desc "Fill database with carousel objects"
  task carousel: :environment do

    create_carousel

  end
end

def create_carousel


  CSV.foreach("db/data/carousel.csv", headers: true) do | row |
    file = row['file']
    title = row['title']
    description = row['description']
    album = row['album']
    event = row['event']

    puts "Processing carousel #{file}"
    p = Carousel.new
    p.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'carousel', file)).first)
    p.title = title
    p.description = description
    unless album.blank?
      a = Album.find_by_title(album)
      p.album_id = a.id
    end
    unless event.blank?
      a = Event.find_by_title(event)
      p.event_id = a.id
    end

    p.save!


  end

end
