class Member < ActiveRecord::Base
  attr_accessible :name, :year, :file

  has_and_belongs_to_many :terms
  
 has_attached_file :file, :styles => { original: "600x600#",
    medium: "400x400#",
    thumb: "200x200#",
    carousel: "770x350#" },
  :convert_options => {
    thumb: "-quality 100 -strip",
    medium: "-quality 100 -strip",
    carousel: "-quality 80 -strip" }


end
