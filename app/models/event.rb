class Event < ActiveRecord::Base
  attr_accessible :datetime, :description, :title
    has_attached_file :file, :styles => { original: "600x400",
    thumb: "500x500#" },
  :convert_options => {
    thumb: "-quality 100 -strip" }

  belongs_to :term
  has_one :album
  has_one :carousel
end
