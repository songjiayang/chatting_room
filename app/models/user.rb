class User < ActiveRecord::Base
	include Gravtastic
	gravtastic
  attr_accessible :email, :username
  validates :email, :uniqueness => true
  validates :email, :presence => true
  has_many :rooms, :dependent=>:destroy 

  def self.image_with_email(email,username)
  	user = User.find_by_email(email.to_s)|| User.create({username:username.to_s,email:email.to_s})
  	user.id
  end

end
