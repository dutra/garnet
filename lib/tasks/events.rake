namespace :db do
  desc "Fill database with event objects"
  task events: :environment do

    create_events

  end
end

def create_events


  CSV.foreach("db/data/events.csv", headers: true) do | row |
    puts row.inspect
    file = row['file']
    title = row['title']
    description = row['description']
    album = row['album']
    start = row['start']
    
    puts "Processing event #{title}"
    p = Event.new
    p.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'events', file)).first)
    p.title = title
    p.description = description
    puts "Event datetime is #{start}"
    p.datetime = DateTime.parse(start)

    # unless event.blank?
    #   a = Event.find_by_title(event)
    #   p.event_id = a.id
    # end

    p.save!
    unless album.blank?
      puts album
      a = Album.find_by_title(album)
      puts p.id
      a.event_id = p.id

      a.save!
    end

  end

end
