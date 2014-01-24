class Photo < ActiveRecord::Base
  attr_accessible :file, :description, :title, :carousel, :carousel_title, :carousel_description
  has_attached_file :file, :styles => { original: "1920x1080",
    medium: "900x600#",
    thumb: "300x200#"  },
  :convert_options => {
    thumb: "-quality 100 -strip",
    medium: "-quality 100 -strip"
  }

  belongs_to :album
  belongs_to :album_cover, foreign_key: "album_cover_id"
#  has_one :exif_info
  
  # after_save do |photo|
  #   if photo.exif_info.nil?
  #     exif = photo.build_exif_info
  #   else
  #     exif = photo.exif_info
  #   end
    
  #   if exif.scan(photo)
  #     exif.save
  #   else
  #     exif.destroy
  #   end
  # end
  
end
