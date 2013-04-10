class Favourite < ActiveRecord::Base
  attr_accessible :room_id, :user_id
  belongs_to :user
  belongs_to :room


  def self.user_index_room?(room_id,user_id)
  	  !Favourite.where("room_id=? and user_id=?",room_id,user_id).blank?
  end


  def self.fav_or_unfav(user_id,room_id,type)
  	if type=="like"
  		  Favourite.where('user_id=? and room_id=?',user_id,room_id).blank?? (Favourite.create({user_id:user_id,room_id:room_id}).id) : "error"	 
  	else
  			Favourite.where('user_id=? and room_id=?',user_id,room_id).first.destroy.id
  	end

  end

end
