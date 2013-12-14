class Carousel < ActiveRecord::Base
  attr_accessible :description, :title
  has_attached_file :file, :styles => { original: "1920x1080",
    carousel: "770x350#" },
  :convert_options => {
    carousel: "-quality 100 -strip" }
  
  belongs_to :album
  belongs_to :event
end
