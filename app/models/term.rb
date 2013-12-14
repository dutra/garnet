class Term < ActiveRecord::Base
  attr_accessible :name, :title
  has_and_belongs_to_many :members
  has_many :events
end
