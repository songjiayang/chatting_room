class Room < ActiveRecord::Base
  attr_accessible :description, :title
  validates :description, :title, :presence => true
  belongs_to :user
  has_many :sms, :class_name=>'Sms', :dependent=>:destroy


  def flush_online_user(user_id)
  	key = "on_line_user_of_number_#{id}"
  	if $redis.get(key).blank?
  		$redis.set(key,{user_id.to_s => Time.now}.to_json)
  		1
  	else
  		users = JSON.parse $redis.get(key)
  		users[user_id.to_s] = Time.now
      users = users.select{|k,v| (Time.parse v.to_s)>2.minute.ago.localtime}
      $redis.set(key,users.to_json)
  		users.count
  	end
  end

  def self.online_user_number(id)
  	key = "on_line_user_of_number_#{id}"
  	users =  $redis.get(key)
  	if users.blank?
  		0 
  	else
  		(JSON.parse users).size
  	end
  end
end
