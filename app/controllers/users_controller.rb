class UsersController < ApplicationController

	before_filter :authcation_with_user
  
  def index
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def fav_or_unfav
  		render json: Favourite.fav_or_unfav(current_user.id,params[:room_id].to_i,params[:type].to_s)
  end

end
