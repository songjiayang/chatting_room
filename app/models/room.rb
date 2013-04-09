class Room < ActiveRecord::Base
  attr_accessible :description, :title
  validates :description, :title, :presence => true
  belongs_to :user
end
