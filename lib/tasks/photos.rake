namespace :db do
  desc "Fill database with messier objects"
  task albums: :environment do

    create_albums
    create_photos

  end
end

def create_albums


  CSV.foreach("db/data/albums.csv", headers: true) do | row |
    title = row['title']
    description = row['description']
    location = row['location']

    puts "Processing album #{title}"

    a = Album.new
    a.title = title
    a.description = description
    a.location = location
    a.save!

  end

end

def create_photos


  CSV.foreach("db/data/photos.csv", headers: true) do | row |
    file = row['file']
    album = row['album']
    title = row['title']
    description = row['description']
    cover = row['cover']
    carousel = row['carousel']
    carousel_title = row['carousel_title']
    carousel_description = row['carousel_description']

    puts "Processing photo #{file}, #{title} from album #{album}"
    a = Album.find_by_title(album)
    p = a.photos.new
    p.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'albums', album.underscore, file)).first)
    p.title = title
    p.description = description
    if cover == "1"
      puts "Setting up cover as #{file}"
      p.album_cover_id = a.id
    end
    p.save!


  end

end
