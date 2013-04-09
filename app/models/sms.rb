class Sms < ActiveRecord::Base
  attr_accessible :content, :room_id, :user_id
  belongs_to :room
  belongs_to :user
end
