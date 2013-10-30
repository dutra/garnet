class Album < ActiveRecord::Base
  attr_accessible :description, :title, :location
  has_many :photos
  has_one :cover, class_name: "Photo", foreign_key: "album_cover_id"
end
